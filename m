Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CBABB81E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 17:38:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y5vc47KE8K0qJuEqRfyZkNRmf0vSYH/2K0s5IECtYCA=; b=gc+WbqFXjc5ff/
	xv7sDC9KQI8++As2jeHLa/zAMD8w/TzC2kOeuxx9B57Qcovb9VLvQJdvm/3lf62G747yal8w239DH
	3A2JpQhjjWx6xoRKkllNxDU02fWThD2NwP0EAmc7ch77ATiO+7+cBd1bnSCGAGZPmE4iqgjrVEkPZ
	MdrxDZjGAT1AVaVt1HmcdShozDJwITSwgWouFkbvnR1+8K66f9XL2oBcL0zToLmQtWGImX6eULN0n
	gKG3fluVfMrtM3mCOttcV5J4QmEPa0X2GT/wtofuiaBrbRx8wAD866Hxy3z/NyHd6C+puFnPx9qRv
	qxN0hZygZSgrkTWZWNAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCQPg-0002BL-BT; Mon, 23 Sep 2019 15:38:08 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQPU-00029g-6Y
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 15:37:57 +0000
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 36665B62C
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 15:37:55 +0000 (UTC)
Received: by mail-qt1-f197.google.com with SMTP id x26so17695682qtr.17
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 08:37:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=E4QK3gDwO4DVf24v4ZLxlDMDZWgHlHSA6oyD8Fga644=;
 b=S2VgND7PGVo2d0R2gtOFrlCPufEB06x1SIYSaXc2iNXdKOTdBUoZDVxiRMvIGxWyG/
 JHDqDEJ7wmw8VlfkIZycp+DE9lSGc2l3HHgUQkbkuu0LOPxoI3XoQbj++qp0fN0Rn+dh
 ex97pQi1XNdLJGONgFPq27UE1R8btA3nlA1pkHEZ+JRAung+I0UXAQsVd5oMBYicPE+b
 1riIafT2nwPvfGIa9Zz+QDscvoW1/sC+ii8pRMdKaeIio9q1JISExXqWOzVktvXXelvH
 as9ddYzJgPAFF0mEN2k868el/eOIUG5zEn0gflzwk3VJdd2oi+PUp7k9UZeNGBdLMYdU
 zWmQ==
X-Gm-Message-State: APjAAAU6AymPCskLXQVDHiX+18Q1sVhmu9XKgFyiQjQqLjeRMLgZ/V/q
 ztw43xTzcJzyNbYJ0dQE8hfBpCku0PQxJfbvMLzLBWiW+YamMpW8Ogr5xxfYCBL3UbzrOPy/o/Q
 kRd/X0b7DeLBlRY6pqdf/l90qUdq5JfLOYOs=
X-Received: by 2002:a37:57c6:: with SMTP id l189mr452350qkb.246.1569253074530; 
 Mon, 23 Sep 2019 08:37:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwMQYK4n8L9Q6BZh5x7gAOg7nRwOrwBwHigRwbuP/jdi+b4Ycl1HHmEcZoDvnm4Qa21KTqtNw==
X-Received: by 2002:a37:57c6:: with SMTP id l189mr452317qkb.246.1569253074360; 
 Mon, 23 Sep 2019 08:37:54 -0700 (PDT)
Received: from redhat.com (bzq-79-176-40-226.red.bezeqint.net. [79.176.40.226])
 by smtp.gmail.com with ESMTPSA id l7sm5265164qke.67.2019.09.23.08.37.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 08:37:53 -0700 (PDT)
Date: Mon, 23 Sep 2019 11:37:45 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [PATCH v10 3/6] mm: Introduce Reported pages
Message-ID: <20190923113722-mutt-send-email-mst@kernel.org>
References: <20190918175109.23474.67039.stgit@localhost.localdomain>
 <20190918175249.23474.51171.stgit@localhost.localdomain>
 <20190923041330-mutt-send-email-mst@kernel.org>
 <CAKgT0UfFBO9h3heGSo+AaZgUNpy5uuOm3yh62bYwYJ5dq+t1gQ@mail.gmail.com>
 <20190923105746-mutt-send-email-mst@kernel.org>
 <CAKgT0Ufp0bdz3YkbAoKWd5DALFjAkHaSUn_UywW1+3hk4tjPSQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKgT0Ufp0bdz3YkbAoKWd5DALFjAkHaSUn_UywW1+3hk4tjPSQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_083756_280897_BF7CE893 
X-CRM114-Status: GOOD (  25.31  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Michal Hocko <mhocko@kernel.org>, linux-mm <linux-mm@kvack.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 Andrea Arcangeli <aarcange@redhat.com>, virtio-dev@lists.oasis-open.org,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Matthew Wilcox <willy@infradead.org>, "Wang, Wei W" <wei.w.wang@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Rik van Riel <riel@surriel.com>,
 Dan Williams <dan.j.williams@intel.com>, lcapitulino@redhat.com,
 linux-arm-kernel@lists.infradead.org, Oscar Salvador <osalvador@suse.de>,
 Nitesh Narayan Lal <nitesh@redhat.com>, Dave Hansen <dave.hansen@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mel Gorman <mgorman@techsingularity.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 08:28:00AM -0700, Alexander Duyck wrote:
> On Mon, Sep 23, 2019 at 8:00 AM Michael S. Tsirkin <mst@redhat.com> wrote:
> >
> > On Mon, Sep 23, 2019 at 07:50:15AM -0700, Alexander Duyck wrote:
> > > > > +static inline void
> > > > > +page_reporting_reset_boundary(struct zone *zone, unsigned int order, int mt)
> > > > > +{
> > > > > +     int index;
> > > > > +
> > > > > +     if (order < PAGE_REPORTING_MIN_ORDER)
> > > > > +             return;
> > > > > +     if (!test_bit(ZONE_PAGE_REPORTING_ACTIVE, &zone->flags))
> > > > > +             return;
> > > > > +
> > > > > +     index = get_reporting_index(order, mt);
> > > > > +     reported_boundary[index] = &zone->free_area[order].free_list[mt];
> > > > > +}
> > > >
> > > > So this seems to be costly.
> > > > I'm guessing it's the access to flags:
> > > >
> > > >
> > > >         /* zone flags, see below */
> > > >         unsigned long           flags;
> > > >
> > > >         /* Primarily protects free_area */
> > > >         spinlock_t              lock;
> > > >
> > > >
> > > >
> > > > which is in the same cache line as the lock.
> > >
> > > I'm not sure what you mean by this being costly?
> >
> > I've just been wondering why does will it scale report a 1.5% regression
> > with this patch.
> 
> Are you talking about data you have collected from a test you have
> run, or the data I have run?

About the kernel test robot auto report that was sent recently.

> In the case of the data I have run I notice almost no difference as
> long as the pages are not actually being madvised. Once I turn on the
> madvise then I start seeing the regression, but almost all of that is
> due to page zeroing/faulting. There isn't expected to be a gain from
> this patchset until you start having guests dealing with memory
> overcommit on the host. Then at that point the patch set should start
> showing gains when the madvise bits are enabled in QEMU.
> 
> Also the test I have been running is a modified version of the
> page_fault1 test to specifically target transparent huge pages in
> order to make this test that much more difficult, the standard
> page_fault1 test wasn't showing much of anything since the overhead
> for breaking a 2M page into 512 4K pages and zeroing those
> individually in the guest  was essentially drowning out the effect of
> the patches themselves.
> 
> - Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
