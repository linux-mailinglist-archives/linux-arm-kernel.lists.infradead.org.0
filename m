Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36762BF5A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 17:14:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mvWUwbSfJusqIjsrOO9vZraZJHQ6koxPGvlDdIgWcQY=; b=J1b/83gZwlHRlo
	D4tiZcBjZWjlyH72ZtRE84qy5shR5la+kuTWX2fGnAU+qliAMoniqtrUjBklDNggauAku1IScnvSn
	y68wpWENfPNnGKCt0ugx36/gofXDlbjVulxN7T7YK3qE9njkIxdLQlqn27cgeA8wHp3rWvE2fP0MT
	BKt9TowaiO5KZzUiojZH23BNT9SCKXB2fk9J6vwieBGCPYI0Nmyai+TjkCd+DA7AF7nbk/nJvCQYB
	uP/B8t1UjAKFc/ntILC2VGj5pKLiZrx6cG8XEFP23Vd0GPvrYyK72Doe5iy1Z4eNS5Yhz92kTfRv7
	6HdQRFlkxZjJZb4XiGSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDVTS-0008NL-6q; Thu, 26 Sep 2019 15:14:30 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDVT9-0008J3-Dg
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 15:14:13 +0000
Received: by mail-io1-xd41.google.com with SMTP id z19so7590301ior.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 08:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MssJfGqFwiZbEoM1zlZJzw7b6l9jnzMrISJtN812IMw=;
 b=miZFOhlNiZj9wBYrvD3inMkDNqgv/03t4AcXjQj2vy58QKPAeiC7S1h7B68x16WNV/
 i1lezg04d6pVR4IRz8WyVw830gMROKU4UdL8wnoPCJuO6SnMUhwcs+nvve74gUyjCC+0
 dEWOkaPClAf6T8s1PrbVlqv+mrCmj1k0Ah4qiy+kKDtgraf6/yaCSbKHbomFlke8r1wx
 fBnyEFXRYlDog9LZtpdNVsigxIT+1NWnosgPw4fAH55SaUB/r/e6KHgMdTsvgZ+I87A/
 3Q5UKNkb2fC5kBNIfAvwY+GoXGo78FhllVAulEEddtC23K3lN2LecL07/5+68vic0P64
 wvHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MssJfGqFwiZbEoM1zlZJzw7b6l9jnzMrISJtN812IMw=;
 b=CwXHCE0YK6iEb6NViUH5idHPFQMqKYWC53q4o/KRtql7/cmqhwhP02Z9tm92Vdzmvl
 ijmuQkNBgA7Up2e5Yx4umIO+YG2GeyAG7peT3OB/WzT1ws44WVyuWOAB8rsw4tJjQplf
 ERevG7+no6yxy8g1+cNhnKAAD/AEu666WsPMuY4O5EfVzEhZ0kph9a56IVCqjX92V31E
 Qdez+T04SASg4dzfGmpEI8eenvJ7bBq8tjtLY+koF5pMuhnpGm0CNReMaqWp25sRLpIA
 CtsfLTKBKVIAk0yEja6HSQoBG6o1MNeJXg6FfsEhBPkaxhA13si4FHPQgOuv/bQ8jqzi
 fRpw==
X-Gm-Message-State: APjAAAUrzte24cUqkt1U4e9AwyzhZPt9syv6O355LTDcpUtiIDHOGwBg
 eqJogrVIHrdqW8j/rc0JHoEDX2l96nVh5KNyOxM=
X-Google-Smtp-Source: APXvYqzRpIn19KqBaKYU04aPj4mWJSsaF+aQ0+QWmOe3Z7+FA5esKkyUVbPU8f6HkvgdwnC6oeShzAoasKK/SjnjON0=
X-Received: by 2002:a92:b743:: with SMTP id c3mr2993184ilm.237.1569510849064; 
 Thu, 26 Sep 2019 08:14:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190918175109.23474.67039.stgit@localhost.localdomain>
 <20190924142342.GX23050@dhcp22.suse.cz>
 <CAKgT0UcYdA+LysVVO+8Beabsd-YBH+tNUKnQgaFmrZBW1xkFxA@mail.gmail.com>
 <20190926122208.GI20255@dhcp22.suse.cz>
In-Reply-To: <20190926122208.GI20255@dhcp22.suse.cz>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 26 Sep 2019 08:13:58 -0700
Message-ID: <CAKgT0UfMooLJ9bWAhAyyznwxcUyibJr28AaSKfYbdJkguOLcvw@mail.gmail.com>
Subject: Re: [PATCH v10 0/6] mm / virtio: Provide support for unused page
 reporting
To: Michal Hocko <mhocko@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_081411_570698_F02E3F6F 
X-CRM114-Status: GOOD (  31.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.duyck[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Thu, Sep 26, 2019 at 5:22 AM Michal Hocko <mhocko@kernel.org> wrote:
>
> On Tue 24-09-19 08:20:22, Alexander Duyck wrote:
> > On Tue, Sep 24, 2019 at 7:23 AM Michal Hocko <mhocko@kernel.org> wrote:
> > >
> > > On Wed 18-09-19 10:52:25, Alexander Duyck wrote:
> > > [...]
> > > > In order to try and keep the time needed to find a non-reported page to
> > > > a minimum we maintain a "reported_boundary" pointer. This pointer is used
> > > > by the get_unreported_pages iterator to determine at what point it should
> > > > resume searching for non-reported pages. In order to guarantee pages do
> > > > not get past the scan I have modified add_to_free_list_tail so that it
> > > > will not insert pages behind the reported_boundary.
> > > >
> > > > If another process needs to perform a massive manipulation of the free
> > > > list, such as compaction, it can either reset a given individual boundary
> > > > which will push the boundary back to the list_head, or it can clear the
> > > > bit indicating the zone is actively processing which will result in the
> > > > reporting process resetting all of the boundaries for a given zone.
> > >
> > > Is this any different from the previous version? The last review
> > > feedback (both from me and Mel) was that we are not happy to have an
> > > externally imposed constrains on how the page allocator is supposed to
> > > maintain its free lists.
> >
> > The main change for v10 versus v9 is that I allow the page reporting
> > boundary to be overridden. Specifically there are two approaches that
> > can be taken.
> >
> > The first is to simply reset the iterator for whatever list is
> > updated. What this will do is reset the iterator back to list_head and
> > then you can do whatever you want with that specific list.
>
> OK, this is slightly better than pushing the allocator to the corner.
> The allocator really has to be under control of its data structures.
> I would still be happier if the allocator wouldn't really have to bother
> about somebody snooping its internal state to do its own thing. So
> please make sure to describe why and how much this really matters.

Okay I can try to do that. I suppose if nothing else I can put
together a test patch that reverts these bits and can add
documentation on the amount of regression seen without those bits. I
should be able to get that taken care of and a v11 out in the next few
days.

> > The other option is to simply clear the ZONE_PAGE_REPORTING_ACTIVE
> > bit. That will essentially notify the page reporting code that any/all
> > hints that were recorded have been discarded and that it needs to
> > start over.
> >
> > All I am trying to do with this approach is reduce the work. Without
> > doing this the code has to walk the entire free page list for the
> > higher orders every iteration and that will not be cheap.
>
> How expensive this will be?

Well without this I believe the work goes from being O(n) to O(n^2) as
we would have to walk the list every time we pull the batch of pages,
so without the iterator we end up having walk the page list
repeatedly. I suspect it becomes more expensive the more memory we
have. I'll be able to verify it later today once I can generate some
numbers.

> > Admittedly
> > it is a bit more invasive than the cut/splice logic used in compaction
> > which is taking the pages it has already processed and moving them to
> > the other end of the list. However, I have reduced things so that we
> > only really are limiting where add_to_free_list_tail can place pages,
> > and we are having to check/push back the boundaries if a reported page
> > is removed from a free_list.
> >
> > > If this is really the only way to go forward then I would like to hear
> > > very convincing arguments about other approaches not being feasible.
> > > There are none in this cover letter unfortunately. This will be really a
> > > hard sell without them.
> >
> > So I had considered several different approaches.
>
> Thanks this is certainly useful and it would have been even more so if
> you gave some rough numbers to quantify how much overhead for different
> solutions we are talking about here.

I'll see what I can do. As far as the bitmap solution I think Nitesh
has numbers for what he has been able to get out of it. At this point
I would assume his solution for the virtio/QEMU bits is probably
identical to mine so it should be easier to get an apples to apples
comparison.

Thanks.

- Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
