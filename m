Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B22B0D9D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 13:12:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hTIfaUU+q9YQA/Y61CjniYEXzn2WpDlg5/8pJ7oEAkc=; b=FWvhShGWKkWCtx
	B1xF3CXKEGUiVrafvCjj2nGH0pApapoHe8PQnPi34aosTzt5Luyxg14P+l6TK3/RgtvuPDjWNEkMR
	JULqYb2dssLm/WtL4EcrUnuw1SAj879QRp0FCskS5AX42dqoBA5UujfjvXcrKnNhRMi2YYMMiZDmU
	/4akD+GrvU8Sfc3WqWyd+w5cUz9CNjEvSCWBJdNUwM+LBdu4Q6Nkv2enTRmWS/6qO9EK3+iL8N81p
	cUzQe+qf1nsz8b+S+/klR0l47iBnO4HK2WH9tOGB/u4xQaf4x6rhzveWLxKXRupv2ubOGFplhGhYQ
	JlWrRfHdZNcr1b2TIqkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8N1g-0003w8-Qv; Thu, 12 Sep 2019 11:12:37 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8N11-0003vP-1H
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 11:11:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1AB9AB764;
 Thu, 12 Sep 2019 11:11:52 +0000 (UTC)
Date: Thu, 12 Sep 2019 13:11:50 +0200
From: Michal Hocko <mhocko@kernel.org>
To: "Kirill A. Shutemov" <kirill@shutemov.name>
Subject: Re: [PATCH v9 0/8] stg mail -e --version=v9 \
Message-ID: <20190912111150.GQ4023@dhcp22.suse.cz>
References: <20190910124209.GY2063@dhcp22.suse.cz>
 <CAKgT0Udr6nYQFTRzxLbXk41SiJ-pcT_bmN1j1YR4deCwdTOaUQ@mail.gmail.com>
 <20190910144713.GF2063@dhcp22.suse.cz>
 <CAKgT0UdB4qp3vFGrYEs=FwSXKpBEQ7zo7DV55nJRO2C-KCEOrw@mail.gmail.com>
 <20190910175213.GD4023@dhcp22.suse.cz>
 <1d7de9f9f4074f67c567dbb4cc1497503d739e30.camel@linux.intel.com>
 <20190911113619.GP4023@dhcp22.suse.cz>
 <CAKgT0UfOp1c+ov=3pBD72EkSB9Vm7mG5G6zJj4=j=UH7zCgg2Q@mail.gmail.com>
 <20190912091925.GM4023@dhcp22.suse.cz>
 <20190912102425.wzhhe6ygfgg64sma@box>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190912102425.wzhhe6ygfgg64sma@box>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_041155_373733_3608B6F5 
X-CRM114-Status: GOOD (  21.95  )
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
 David Hildenbrand <david@redhat.com>, Matthew Wilcox <willy@infradead.org>,
 "Wang, Wei W" <wei.w.wang@intel.com>, Mel Gorman <mgorman@suse.de>,
 ying.huang@intel.com, Rik van Riel <riel@surriel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, Oscar Salvador <osalvador@suse.de>,
 Nitesh Narayan Lal <nitesh@redhat.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Dave Hansen <dave.hansen@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Fengguang Wu <fengguang.wu@intel.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 12-09-19 13:24:25, Kirill A. Shutemov wrote:
> On Thu, Sep 12, 2019 at 11:19:25AM +0200, Michal Hocko wrote:
> > On Wed 11-09-19 08:12:03, Alexander Duyck wrote:
> > > On Wed, Sep 11, 2019 at 4:36 AM Michal Hocko <mhocko@kernel.org> wrote:
> > > >
> > > > On Tue 10-09-19 14:23:40, Alexander Duyck wrote:
> > > > [...]
> > > > > We don't put any limitations on the allocator other then that it needs to
> > > > > clean up the metadata on allocation, and that it cannot allocate a page
> > > > > that is in the process of being reported since we pulled it from the
> > > > > free_list. If the page is a "Reported" page then it decrements the
> > > > > reported_pages count for the free_area and makes sure the page doesn't
> > > > > exist in the "Boundary" array pointer value, if it does it moves the
> > > > > "Boundary" since it is pulling the page.
> > > >
> > > > This is still a non-trivial limitation on the page allocation from an
> > > > external code IMHO. I cannot give any explicit reason why an ordering on
> > > > the free list might matter (well except for page shuffling which uses it
> > > > to make physical memory pattern allocation more random) but the
> > > > architecture seems hacky and dubious to be honest. It shoulds like the
> > > > whole interface has been developed around a very particular and single
> > > > purpose optimization.
> > > 
> > > How is this any different then the code that moves a page that will
> > > likely be merged to the tail though?
> > 
> > I guess you are referring to the page shuffling. If that is the case
> > then this is an integral part of the allocator for a reason and it is
> > very well obvious in the code including the consequences. I do not
> > really like an idea of hiding similar constrains behind a generic
> > looking feature which is completely detached from the allocator and so
> > any future change of the allocator might subtly break it.
> 
> I don't necessary follow why shuffling is more integral to page allocator
> than reporting would be. It's next to shutffle.c under mm/ and integrated
> in a simillar way.

The main difference from my understanding is that the page reporting is
a more generic looking feature which might grow different users over
time yet there is a hardcoded set of restrictions to the allocator. Page
shuffling is an integral part of the allocator without any other
visibility outside.

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
