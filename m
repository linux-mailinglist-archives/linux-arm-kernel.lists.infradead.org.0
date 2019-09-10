Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEEAAED96
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 16:47:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oU/7W3kyDqlmrPeTOJNQRL/kpumXiSsyzXAfM5w9qbw=; b=qLqOlPUemVF5Df
	CoEvr2M+4vdlUoNX1Rp+t8N8XrZqrB+GBlqfA8QoO5QDM2RZT6pKfrWlVBHKnakiwldedL0wk71T4
	LD7cDCWU/SjbHAEOrqrozYtIhN44Z7IdkzYJwGld6abnyaqRbqRGVyXtICAq0y/OARg0hhZEjN4+u
	C/34iQ4XGvNxVVB1KMlSb+jb7OOGWAxi6/+r7mjfKJyJYVZZ6moTyJgSXKFrK6gOYk3ylPIiyepB6
	A/N5mjbMXRtXMCN3ogDBj7dnMKZPAgtPE4kuv/ZkWdBCrnxj2Sv44nthmitlJ7veYKPUsJnan/Cua
	UgnSVQOO4nHEIJAcquZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hQb-0006NU-7H; Tue, 10 Sep 2019 14:47:33 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hQK-0006I6-89
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 14:47:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id AA491ABD2;
 Tue, 10 Sep 2019 14:47:14 +0000 (UTC)
Date: Tue, 10 Sep 2019 16:47:13 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [PATCH v9 0/8] stg mail -e --version=v9 \
Message-ID: <20190910144713.GF2063@dhcp22.suse.cz>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190910124209.GY2063@dhcp22.suse.cz>
 <CAKgT0Udr6nYQFTRzxLbXk41SiJ-pcT_bmN1j1YR4deCwdTOaUQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKgT0Udr6nYQFTRzxLbXk41SiJ-pcT_bmN1j1YR4deCwdTOaUQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_074716_649750_267FDFB6 
X-CRM114-Status: GOOD (  22.36  )
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

On Tue 10-09-19 07:42:43, Alexander Duyck wrote:
> On Tue, Sep 10, 2019 at 5:42 AM Michal Hocko <mhocko@kernel.org> wrote:
> >
> > I wanted to review "mm: Introduce Reported pages" just realize that I
> > have no clue on what is going on so returned to the cover and it didn't
> > really help much. I am completely unfamiliar with virtio so please bear
> > with me.
> >
> > On Sat 07-09-19 10:25:03, Alexander Duyck wrote:
> > [...]
> > > This series provides an asynchronous means of reporting to a hypervisor
> > > that a guest page is no longer in use and can have the data associated
> > > with it dropped. To do this I have implemented functionality that allows
> > > for what I am referring to as unused page reporting
> > >
> > > The functionality for this is fairly simple. When enabled it will allocate
> > > statistics to track the number of reported pages in a given free area.
> > > When the number of free pages exceeds this value plus a high water value,
> > > currently 32, it will begin performing page reporting which consists of
> > > pulling pages off of free list and placing them into a scatter list. The
> > > scatterlist is then given to the page reporting device and it will perform
> > > the required action to make the pages "reported", in the case of
> > > virtio-balloon this results in the pages being madvised as MADV_DONTNEED
> > > and as such they are forced out of the guest. After this they are placed
> > > back on the free list,
> >
> > And here I am reallly lost because "forced out of the guest" makes me
> > feel that those pages are no longer usable by the guest. So how come you
> > can add them back to the free list. I suspect understanding this part
> > will allow me to understand why we have to mark those pages and prevent
> > merging.
> 
> Basically as the paragraph above mentions "forced out of the guest"
> really is just the hypervisor calling MADV_DONTNEED on the page in
> question. So the behavior is the same as any userspace application
> that calls MADV_DONTNEED where the contents are no longer accessible
> from userspace and attempting to access them will result in a fault
> and the page being populated with a zero fill on-demand page, or a
> copy of the file contents if the memory is file backed.

As I've said I have no idea about virt so this doesn't really tell me
much. Does that mean that if somebody allocates such a page and tries to
access it then virt will handle a fault and bring it back?

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
