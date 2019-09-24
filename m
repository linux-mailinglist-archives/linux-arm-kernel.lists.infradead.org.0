Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65275BCB1B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 17:21:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I91RAekD3Y0WjFg1QceSCDf0Zppn6o+xOAySZmOACgw=; b=JyIj7YrIXkzmD/
	GylMmy7o7vgU8caVcbvMLejJRHxgC74lvqId/As3HZjzU97osmCPJRSvEXBmKEqYEFZqnos8vmPHk
	eMqoRRY6ldvrGRDoxOAG1frhVJGGPrYBMvsJBaznHsyfTXQlcdp1FB8lju+PKMA6nIDqD/n+60jHQ
	K38LPgdCLyfa48pRlgM8/AyNS0XI+8OPp63WpT3zF+E5ewqIXmp02V9wrAHsbReMoAH1yIfb2XuFN
	0ADz+eiNVJZwkJjQtw1rpBrDYIODcct5qymuYhhfQJJmJYNmmKlZdfvzux+YWRLW/3k9wIH4cAPV+
	YZCSFu+sKQYxIK7UqJBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCmcu-0001xl-1J; Tue, 24 Sep 2019 15:21:16 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCmcF-0001wu-3X
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 15:20:36 +0000
Received: by mail-io1-xd44.google.com with SMTP id c6so5322209ioo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 08:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3vndOFpomYvqhjMHonq+ZiK1F3lWOY+1wZwRmFatWgM=;
 b=bf86zzT/BJVIQLMuNEsr24gPRADQByrsb4uOvrzzyYNXxKxHkX+iTTEYpEj96J2fP2
 /M/bWWME7Q7/8YU/EJPOwxFfn5vA3/QZIO8jvwD0TSWIp8hRnPHjl61MuN4XpA5ZNsw1
 QJ5q/mLvJvq20wTq4mHhg+5RJLxhI2SXTGixj5Gsv/TRri4n7D/MaerbUzB5cwLnL4Z1
 bzjJY9PNSS2f6+7+gg4LuaZRY+J/qUuk2YXqq+Dls6fshFGZgc/qXPrZyDiyoYHsQ2qy
 ij/WL2ZS0Ojjx/w7lEcvPBELzKTug3T2ZSV5Ann4+aQrV+PZKqx3bnEvKI4kB6/eOOLZ
 ZzyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3vndOFpomYvqhjMHonq+ZiK1F3lWOY+1wZwRmFatWgM=;
 b=KLjqs6zymIYRMv/PM6J+KbuKkXDSce//T6frIPUV4oQtAfYoCxAidDYo8z0o1UyesK
 3uQSyL3qtLChlDL5J1U0aOSPlLyMl3h+SMb72qEKjIaPV/WX8gD91y54HQCH1LDaVpc0
 Wg9hLvUSbEvOyWKVIhpFN8GbezhOUrr+ai3Xcdl1Ku/4hKq+rnIwbBIFbGOioQ2YZcwJ
 pdUb0EKsPHII1I8Q9/+fz3SoWTSLV+4F111Gq5LUPtqiXIGrlJ0zJBjRpBcHmcJdQlfq
 h2tW/clOifLCw8Tz646INPbiCGj9oOrCMtHSjuIbaFLySLS8TG2IRhn2pPR8cpSLPX/e
 e3KQ==
X-Gm-Message-State: APjAAAW4yE8fEW/NVzUS5lNYmzccAh4XAcIRzM1VL+cbl8mPN8H9Rax0
 +MaTe1Mwh/eQjLbDL+SUU4jOXQIktUXQLLSXC40=
X-Google-Smtp-Source: APXvYqxiSzuS37ahQKkUVLhmdpmjhXw0Q7k1sEchjzhO4ftl5DDIvJoMCrNvxaI4DbtZfEVDHguSv0F6qzLq4/fTLjQ=
X-Received: by 2002:a5d:8908:: with SMTP id b8mr4116574ion.237.1569338433491; 
 Tue, 24 Sep 2019 08:20:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190918175109.23474.67039.stgit@localhost.localdomain>
 <20190924142342.GX23050@dhcp22.suse.cz>
In-Reply-To: <20190924142342.GX23050@dhcp22.suse.cz>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 24 Sep 2019 08:20:22 -0700
Message-ID: <CAKgT0UcYdA+LysVVO+8Beabsd-YBH+tNUKnQgaFmrZBW1xkFxA@mail.gmail.com>
Subject: Re: [PATCH v10 0/6] mm / virtio: Provide support for unused page
 reporting
To: Michal Hocko <mhocko@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_082035_147418_F8BE8763 
X-CRM114-Status: GOOD (  24.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.duyck[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Tue, Sep 24, 2019 at 7:23 AM Michal Hocko <mhocko@kernel.org> wrote:
>
> On Wed 18-09-19 10:52:25, Alexander Duyck wrote:
> [...]
> > In order to try and keep the time needed to find a non-reported page to
> > a minimum we maintain a "reported_boundary" pointer. This pointer is used
> > by the get_unreported_pages iterator to determine at what point it should
> > resume searching for non-reported pages. In order to guarantee pages do
> > not get past the scan I have modified add_to_free_list_tail so that it
> > will not insert pages behind the reported_boundary.
> >
> > If another process needs to perform a massive manipulation of the free
> > list, such as compaction, it can either reset a given individual boundary
> > which will push the boundary back to the list_head, or it can clear the
> > bit indicating the zone is actively processing which will result in the
> > reporting process resetting all of the boundaries for a given zone.
>
> Is this any different from the previous version? The last review
> feedback (both from me and Mel) was that we are not happy to have an
> externally imposed constrains on how the page allocator is supposed to
> maintain its free lists.

The main change for v10 versus v9 is that I allow the page reporting
boundary to be overridden. Specifically there are two approaches that
can be taken.

The first is to simply reset the iterator for whatever list is
updated. What this will do is reset the iterator back to list_head and
then you can do whatever you want with that specific list.

The other option is to simply clear the ZONE_PAGE_REPORTING_ACTIVE
bit. That will essentially notify the page reporting code that any/all
hints that were recorded have been discarded and that it needs to
start over.

All I am trying to do with this approach is reduce the work. Without
doing this the code has to walk the entire free page list for the
higher orders every iteration and that will not be cheap. Admittedly
it is a bit more invasive than the cut/splice logic used in compaction
which is taking the pages it has already processed and moving them to
the other end of the list. However, I have reduced things so that we
only really are limiting where add_to_free_list_tail can place pages,
and we are having to check/push back the boundaries if a reported page
is removed from a free_list.

> If this is really the only way to go forward then I would like to hear
> very convincing arguments about other approaches not being feasible.
> There are none in this cover letter unfortunately. This will be really a
> hard sell without them.

So I had considered several different approaches.

What I started out with was logic that was performing the hinting as a
part of the architecture specific arch_free_page call. It worked but
had performance issues as we were generating a hint per page freed
which has fairly high overhead.

The approach Nitesh has been using is to try and maintain a separate
bitmap of "dirty" pages that have recently been freed. There are a few
problems I saw with that approach. First is the fact that it becomes
lossy in that pages could be reallocated out while we are waiting for
the iterator to come through and process the page. This results in
there being a greater amount of work as we have to hunt and peck for
the pages, as such the zone lock has to be freed and reacquired often
which slows this approach down further. Secondly there is the
management of the bitmap itself and sparse memory which would likely
necessitate doing something similar to pageblock_flags on order to
support possible gaps in the zones.

I had considered trying to maintain a separate list entirely and have
the free pages placed there. However that was more invasive then this
solution. In addition modifying the free_list/free_area in any way is
problematic as it can result in the zone lock falling into the same
cacheline as the highest order free_area.

Ultimately what I settled on was the approach we have now where adding
a page to the head of the free_list is unchanged, adding a page to the
tail requires a check to see if the iterator is currently walking the
list, and removing the page requires pushing back the iterator if the
page is at the top of the reported list. I was trying to keep the
amount of code that would have to be touched in the non-reported case
to a minimum. With this we have to test for a bit in the zone flags if
adding to tail, and we have to test for a bit in the page on a
move/del from the freelist. So for the most common free/alloc cases we
would only have the impact of the one additional page flag check.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
