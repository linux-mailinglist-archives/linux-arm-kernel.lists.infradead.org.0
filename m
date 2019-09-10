Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF19AF0A4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 19:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/e2bvHMeAgyuqVS1L6xmxl1Yv2hQDb7nhaj3Lw2Pkc=; b=l4TSp8h1erIb1H
	HrOBle9aH0CHd+gVIsNgL85chywji6MwmVw463YpYL4C6ExABSQGZwcl9be/lFcKdXcSSqlc1KIG8
	oz+YqxogfwZHUAz3sGeJHn8gMxnvgGEEl+8/bL5KZ5p+B7HgEaIOrgTVp9EJDMNA3tzxXxE9sDMSm
	fV+HRFX23vYIgTlIrW/5uBqrFgHgprsZpLj/uYHNuW+WYo4rgSv0JI6OgxIjm2UxkCxjan4+UFjRm
	ZsZos+xm0fvDvwOvp74AS3caECBohBmUTjLPnUF7HXS1AMovop5PsSxhunqPmb0YO+mOAOlE4r6/B
	R7zathI3WGtro+Fi1LgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7kDX-0006Z2-Cy; Tue, 10 Sep 2019 17:46:15 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7kDI-0006Xn-4z
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 17:46:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E89D9AD17;
 Tue, 10 Sep 2019 17:45:54 +0000 (UTC)
Date: Tue, 10 Sep 2019 19:45:53 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [PATCH v9 3/8] mm: Move set/get_pcppage_migratetype to mmzone.h
Message-ID: <20190910174553.GC4023@dhcp22.suse.cz>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172528.10910.37051.stgit@localhost.localdomain>
 <20190910122313.GW2063@dhcp22.suse.cz>
 <CAKgT0Ud1xqhEy_LL4AfMgreP0uXrkF-fSDn=6uDXfn7Pvj5AAw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKgT0Ud1xqhEy_LL4AfMgreP0uXrkF-fSDn=6uDXfn7Pvj5AAw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_104600_334583_2CB14448 
X-CRM114-Status: GOOD (  19.93  )
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

On Tue 10-09-19 07:46:50, Alexander Duyck wrote:
> On Tue, Sep 10, 2019 at 5:23 AM Michal Hocko <mhocko@kernel.org> wrote:
> >
> > On Sat 07-09-19 10:25:28, Alexander Duyck wrote:
> > > From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> > >
> > > In order to support page reporting it will be necessary to store and
> > > retrieve the migratetype of a page. To enable that I am moving the set and
> > > get operations for pcppage_migratetype into the mm/internal.h header so
> > > that they can be used outside of the page_alloc.c file.
> >
> > Please describe who is the user and why does it needs this interface.
> > This is really important because migratetype is an MM internal thing and
> > external users shouldn't really care about it at all. We really do not
> > want a random code to call those, especially the set_pcppage_migratetype.
> 
> I was using it to store the migratetype of the page so that I could
> find the boundary list that contained the reported page as the array
> is indexed based on page order and migratetype. However on further
> discussion I am thinking I may just use page->index directly to index
> into the boundary array. Doing that I should be able to get a very
> slight improvement in lookup time since I am not having to pull order
> and migratetype and then compute the index based on that. In addition
> it becomes much more clear as to what is going on, and if needed I
> could add debug checks to verify the page is "Reported" and that the
> "Buddy" page type is set.

Be careful though. A free page belongs to the page allocator and it is
free to reuse any fields for its purpose so using any of them nilly
willy is no go. If you need to stuff something like that then there
better be an api the allocator is aware of. My main objection is the
abuse migrate type. There might be other ways to express what you need.
Please make sure you clearly define that though.

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
