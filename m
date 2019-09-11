Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 047BEAFC85
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 14:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJE6xwwe3+JXFpvwSPLTjcRMz9mYO0cxF/cfwJ+sxhM=; b=RsNx0tDQUHuhFF
	A5y2H26S+59FJ9rYhP+WZMYawaMKGoeKJZe6Cio9Cfz3CLcVtWWZAyiwmukf6cZVTXtAMYSs3JkGS
	5Dou9SgR36CJLjDfTnhcvaFYaHeLL17j+Rzc5zWEOAQMwoONIle4VlVH+N9DzwIuLwxgBQWmb+xvX
	lkYSgLArpNpufmNHYxqqkP3x+7XTEoXryA2FWTkd/lUjtS6QOw3jJWYdfoKTKVwcc1WkvLyKD/q27
	Y/YvdzAv2eEy6z+89OKnCBPrSzMRb7/R3WFr+PwqNEygCLcAJVxOUhb1mFwzuNDGVKSA6G3iGxGrT
	nqAyVqDGAdtSP8hjkAlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i81gw-0001vG-2A; Wed, 11 Sep 2019 12:25:46 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i81gj-0001ux-01
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 12:25:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 086ACB7F4;
 Wed, 11 Sep 2019 12:25:31 +0000 (UTC)
Date: Wed, 11 Sep 2019 14:25:26 +0200
From: Michal Hocko <mhocko@kernel.org>
To: "Michael S. Tsirkin" <mst@redhat.com>
Subject: Re: [PATCH v9 0/8] stg mail -e --version=v9 \
Message-ID: <20190911122526.GV4023@dhcp22.suse.cz>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190910124209.GY2063@dhcp22.suse.cz>
 <CAKgT0Udr6nYQFTRzxLbXk41SiJ-pcT_bmN1j1YR4deCwdTOaUQ@mail.gmail.com>
 <20190910144713.GF2063@dhcp22.suse.cz>
 <CAKgT0UdB4qp3vFGrYEs=FwSXKpBEQ7zo7DV55nJRO2C-KCEOrw@mail.gmail.com>
 <20190910175213.GD4023@dhcp22.suse.cz>
 <1d7de9f9f4074f67c567dbb4cc1497503d739e30.camel@linux.intel.com>
 <20190911113619.GP4023@dhcp22.suse.cz>
 <20190911080804-mutt-send-email-mst@kernel.org>
 <20190911121941.GU4023@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911121941.GU4023@dhcp22.suse.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_052533_331388_90914321 
X-CRM114-Status: GOOD (  23.02  )
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

On Wed 11-09-19 14:19:41, Michal Hocko wrote:
> On Wed 11-09-19 08:08:38, Michael S. Tsirkin wrote:
> > On Wed, Sep 11, 2019 at 01:36:19PM +0200, Michal Hocko wrote:
> > > On Tue 10-09-19 14:23:40, Alexander Duyck wrote:
> > > [...]
> > > > We don't put any limitations on the allocator other then that it needs to
> > > > clean up the metadata on allocation, and that it cannot allocate a page
> > > > that is in the process of being reported since we pulled it from the
> > > > free_list. If the page is a "Reported" page then it decrements the
> > > > reported_pages count for the free_area and makes sure the page doesn't
> > > > exist in the "Boundary" array pointer value, if it does it moves the
> > > > "Boundary" since it is pulling the page.
> > > 
> > > This is still a non-trivial limitation on the page allocation from an
> > > external code IMHO. I cannot give any explicit reason why an ordering on
> > > the free list might matter (well except for page shuffling which uses it
> > > to make physical memory pattern allocation more random) but the
> > > architecture seems hacky and dubious to be honest. It shoulds like the
> > > whole interface has been developed around a very particular and single
> > > purpose optimization.
> > > 
> > > I remember that there was an attempt to report free memory that provided
> > > a callback mechanism [1], which was much less intrusive to the internals
> > > of the allocator yet it should provide a similar functionality. Did you
> > > see that approach? How does this compares to it? Or am I completely off
> > > when comparing them?
> > > 
> > > [1] mostly likely not the latest version of the patchset
> > > http://lkml.kernel.org/r/1502940416-42944-5-git-send-email-wei.w.wang@intel.com
> > 
> > Linus nacked that one. He thinks invoking callbacks with lots of
> > internal mm locks is too fragile.
> 
> I would be really curious how much he would be happy about injecting
> other restrictions on the allocator like this patch proposes. This is
> more intrusive as it has a higher maintenance cost longterm IMHO.

Btw. I do agree that callbacks with internal mm locks are not great
either. We do have a model for that in mmu_notifiers and it is something
I do consider PITA, on the other hand it is mostly sleepable part of the
interface which makes it the real pain. The above callback mechanism was
explicitly documented with restrictions and that the context is
essentially atomic with no access to particular struct pages and no
expensive operations possible. So in the end I've considered it
acceptably painful. Not that I want to override Linus' nack but if
virtualization usecases really require some form of reporting and no
other way to do that push people to invent even more interesting
approaches then we should simply give them/you something reasonable
and least intrusive to our internals.
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
