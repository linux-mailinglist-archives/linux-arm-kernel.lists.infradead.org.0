Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 386F6AF245
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 22:26:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bui//h/AAg/D6ma9tqGJZgM3H0P/0wP6kN7sRkU7rlw=; b=PSHFT9XnSBq/Mg
	cemlOASqm1LIdFdXH+dbjEL7aG7GJvkbWjK2hHQpTGZdnWuj+bz6hZ26QK0E4Tp1GoDl35lHk2Rm0
	7uT2dVUe95LgtOlE4hAecnQsAXWaKuSbECb60DdB+sWkwF624wh9/wsuFY+lWMm43eOsGWNuFhvtU
	/ugBOpRXMkiXQrufK8PGrdJraqzCeZdysBbYHqledJeeYI+TuYmfGLxyftElkr24h1vwOBRE9XZKe
	zSKg78klZDXfPLqdIfgD+nAQ1YnJtLR9c9Pd3lFjEmklbBsXviXAwbW0v/PRJxJHKmRM9Og+ZP0rn
	ocidbrlwuzdJf1oFUxVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7mih-0001El-W0; Tue, 10 Sep 2019 20:26:36 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7miY-0001EQ-8Q
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 20:26:27 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 13:26:25 -0700
X-IronPort-AV: E=Sophos;i="5.64,490,1559545200"; d="scan'208";a="175429665"
Received: from ahduyck-desk1.jf.intel.com ([10.7.198.76])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 13:26:24 -0700
Message-ID: <ab45e54fd81589c0e9a0645be5f0b9b4027b93ba.camel@linux.intel.com>
Subject: Re: [PATCH v9 3/8] mm: Move set/get_pcppage_migratetype to mmzone.h
From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
To: Michal Hocko <mhocko@kernel.org>, Alexander Duyck
 <alexander.duyck@gmail.com>
Date: Tue, 10 Sep 2019 13:26:24 -0700
In-Reply-To: <20190910174553.GC4023@dhcp22.suse.cz>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172528.10910.37051.stgit@localhost.localdomain>
 <20190910122313.GW2063@dhcp22.suse.cz>
 <CAKgT0Ud1xqhEy_LL4AfMgreP0uXrkF-fSDn=6uDXfn7Pvj5AAw@mail.gmail.com>
 <20190910174553.GC4023@dhcp22.suse.cz>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_132626_312283_082C6A94 
X-CRM114-Status: GOOD (  25.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-mm <linux-mm@kvack.org>, will@kernel.org,
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

On Tue, 2019-09-10 at 19:45 +0200, Michal Hocko wrote:
> On Tue 10-09-19 07:46:50, Alexander Duyck wrote:
> > On Tue, Sep 10, 2019 at 5:23 AM Michal Hocko <mhocko@kernel.org> wrote:
> > > On Sat 07-09-19 10:25:28, Alexander Duyck wrote:
> > > > From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> > > > 
> > > > In order to support page reporting it will be necessary to store and
> > > > retrieve the migratetype of a page. To enable that I am moving the set and
> > > > get operations for pcppage_migratetype into the mm/internal.h header so
> > > > that they can be used outside of the page_alloc.c file.
> > > 
> > > Please describe who is the user and why does it needs this interface.
> > > This is really important because migratetype is an MM internal thing and
> > > external users shouldn't really care about it at all. We really do not
> > > want a random code to call those, especially the set_pcppage_migratetype.
> > 
> > I was using it to store the migratetype of the page so that I could
> > find the boundary list that contained the reported page as the array
> > is indexed based on page order and migratetype. However on further
> > discussion I am thinking I may just use page->index directly to index
> > into the boundary array. Doing that I should be able to get a very
> > slight improvement in lookup time since I am not having to pull order
> > and migratetype and then compute the index based on that. In addition
> > it becomes much more clear as to what is going on, and if needed I
> > could add debug checks to verify the page is "Reported" and that the
> > "Buddy" page type is set.
> 
> Be careful though. A free page belongs to the page allocator and it is
> free to reuse any fields for its purpose so using any of them nilly
> willy is no go. If you need to stuff something like that then there
> better be an api the allocator is aware of. My main objection is the
> abuse migrate type. There might be other ways to express what you need.
> Please make sure you clearly define that though.

I will. Basically if the Reported is set then it will mean that the index
value is in use and provides the index into the boundary array. The
Reported flag will be cleared when the page is pulled from the buddy list
and in the case of the page being allocated it is already overwritten by
__rmqueue_smallest calling set_pcppage_migratetype which is what gave me
the idea to just use that in the first place.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
