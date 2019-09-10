Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A3CAF0B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 19:52:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zl9HhktFs13/Ki5STNgcNHGpKbmyQYK53PY6csgKTBo=; b=cwbrLxFHkjxohA
	y9PJV95g6ZMxfTPK7acbYTLETsO42lCNbWHKukjunHU6fkREanWFxkPFNq3w00+7aJfWUMTT8rw2p
	z+UQSZiHJY37tOkmWkRIn4ZXieV8K7Q1wezdz/6XPZKjLbpYNY6icOIAd2np6HwbbFll5ynZrWfah
	mFfi7ktdpfa66z0YIvJoAwcOEXHKa24ENF9hHGCQpnsdWvUku6YPFLvH5ddCDEGQ9omsZhURzTIEB
	yX7g9eVicZYFHPXougmmvIGIyt/sOrRGaurED561ucrOgFBtXKwXDz5nPtLxvnt6Gqv1mgylLokUJ
	wSKGWu1Anhx1rxiudF1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7kJW-00006B-25; Tue, 10 Sep 2019 17:52:26 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7kJL-00005Y-Ul
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 17:52:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 7BE91AD17;
 Tue, 10 Sep 2019 17:52:14 +0000 (UTC)
Date: Tue, 10 Sep 2019 19:52:13 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [PATCH v9 0/8] stg mail -e --version=v9 \
Message-ID: <20190910175213.GD4023@dhcp22.suse.cz>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190910124209.GY2063@dhcp22.suse.cz>
 <CAKgT0Udr6nYQFTRzxLbXk41SiJ-pcT_bmN1j1YR4deCwdTOaUQ@mail.gmail.com>
 <20190910144713.GF2063@dhcp22.suse.cz>
 <CAKgT0UdB4qp3vFGrYEs=FwSXKpBEQ7zo7DV55nJRO2C-KCEOrw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKgT0UdB4qp3vFGrYEs=FwSXKpBEQ7zo7DV55nJRO2C-KCEOrw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_105216_288621_BBCC6F2D 
X-CRM114-Status: GOOD (  31.50  )
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
 "Wang, Wei W" <wei.w.wang@intel.com>, ying.huang@intel.com,
 Rik van Riel <riel@surriel.com>,
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

On Tue 10-09-19 09:05:43, Alexander Duyck wrote:
> On Tue, Sep 10, 2019 at 7:47 AM Michal Hocko <mhocko@kernel.org> wrote:
> >
> > On Tue 10-09-19 07:42:43, Alexander Duyck wrote:
> > > On Tue, Sep 10, 2019 at 5:42 AM Michal Hocko <mhocko@kernel.org> wrote:
> > > >
> > > > I wanted to review "mm: Introduce Reported pages" just realize that I
> > > > have no clue on what is going on so returned to the cover and it didn't
> > > > really help much. I am completely unfamiliar with virtio so please bear
> > > > with me.
> > > >
> > > > On Sat 07-09-19 10:25:03, Alexander Duyck wrote:
> > > > [...]
> > > > > This series provides an asynchronous means of reporting to a hypervisor
> > > > > that a guest page is no longer in use and can have the data associated
> > > > > with it dropped. To do this I have implemented functionality that allows
> > > > > for what I am referring to as unused page reporting
> > > > >
> > > > > The functionality for this is fairly simple. When enabled it will allocate
> > > > > statistics to track the number of reported pages in a given free area.
> > > > > When the number of free pages exceeds this value plus a high water value,
> > > > > currently 32, it will begin performing page reporting which consists of
> > > > > pulling pages off of free list and placing them into a scatter list. The
> > > > > scatterlist is then given to the page reporting device and it will perform
> > > > > the required action to make the pages "reported", in the case of
> > > > > virtio-balloon this results in the pages being madvised as MADV_DONTNEED
> > > > > and as such they are forced out of the guest. After this they are placed
> > > > > back on the free list,
> > > >
> > > > And here I am reallly lost because "forced out of the guest" makes me
> > > > feel that those pages are no longer usable by the guest. So how come you
> > > > can add them back to the free list. I suspect understanding this part
> > > > will allow me to understand why we have to mark those pages and prevent
> > > > merging.
> > >
> > > Basically as the paragraph above mentions "forced out of the guest"
> > > really is just the hypervisor calling MADV_DONTNEED on the page in
> > > question. So the behavior is the same as any userspace application
> > > that calls MADV_DONTNEED where the contents are no longer accessible
> > > from userspace and attempting to access them will result in a fault
> > > and the page being populated with a zero fill on-demand page, or a
> > > copy of the file contents if the memory is file backed.
> >
> > As I've said I have no idea about virt so this doesn't really tell me
> > much. Does that mean that if somebody allocates such a page and tries to
> > access it then virt will handle a fault and bring it back?
> 
> Actually I am probably describing too much as the MADV_DONTNEED is the
> hypervisor behavior in response to the virtio-balloon notification. A
> more thorough explanation of it can be found by just running "man
> madvise", probably best just to leave it at that since I am probably
> confusing things by describing hypervisor behavior in a kernel patch
> set.

This analogy is indeed confusing and doesn't help to build a picture.

> For the most part all the page reporting really does is provide a way
> to incrementally identify unused regions of memory in the buddy
> allocator. That in turn is used by virtio-balloon in a polling thread
> to report to the hypervisor what pages are not in use so that it can
> make a decision on what to do with the pages now that it knows they
> are unused.

So essentially you want to store metadata into free pages and control
what the allocator can do with them? Namely buddy merging if the type
doesn't match?

> All this is providing is just a report and it is optional if the
> hypervisor will act on it or not. If the hypervisor takes some sort of
> action on the page, then the expectation is that the hypervisor will
> use some sort of mechanism such as a page fault to discover when the
> page is used again.

OK so the baloon driver is in charge of this metadata and the allocator
has to live with that. Isn't that a layer violation?

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
