Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B64EBBB7DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 17:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6xghFtwiNisfkACbHSRAcTicOQ0NJjOBs41COF8ulxY=; b=lecYyr+bncqbL9
	V6i8d0MLjgWK+s7ODiNvxusMIxFk1kqfX1HICdA1FT+DbYoT4zFqUEfCQpQD4Xk1BERY5FSn7iNzk
	f5mzUBeSzogk04tp8rWHwhsMjBmaGAf+GwRlAvGrfT1mq64/VeiH+MTxpKqeXrKxuH3bXaHbfpuYo
	EX9Ecf/bQDE0GSQD4/yZa2tjf6JUs3GiZ619Ap68QhEG1dfmt+sEfr68ziL+lqmOPpcfohaIkv2j3
	aZ70qgvBFFY7eq4pvkgX/T5YNAcJyHP7IFqoiWzCao9GxNTqu3YN1E18JgdyyAIsYE7BfQ63abViw
	xD0uv16EEGLK3juDxl1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCQGL-0007H5-KC; Mon, 23 Sep 2019 15:28:29 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQG4-0007GI-4q
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 15:28:13 +0000
Received: by mail-io1-xd41.google.com with SMTP id c6so21238917ioo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 08:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ovt/JswJZVCgn7gC8S4lJscYd7cbBemmVRbh0mTK6j8=;
 b=DIL1sv8HFoMOCTvY7W467j9MaGY0XQ/cpfliC2FJd/FeyrcnifvBizVcCTvnyAFGIO
 cGheg0eSIIuJBVwN3y7Zr6AyEA6w42em57dkPqn/YBaIGXhMY+V3T02jinZJJdmndquZ
 wmQjkGFyh4MAxEMt95AnBtjAbpPBEgxpszO0c1Jhco2oTN/3BzvoJk4R22PEA65ByoAs
 hERyYTCJW35FEYvB9k5mPgTit9zhbKRMFJtM4CaQY7vGLmPJESVRCVfwVRRpWb6+zdws
 At0ZjLLmFGNozw0nE8OSV6p54JuOZl5KaOWm8llJUap4yEcI7FuKiYJbA9urGVmIhU1E
 iHoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ovt/JswJZVCgn7gC8S4lJscYd7cbBemmVRbh0mTK6j8=;
 b=odDLVqqr2v7H6octKaTTCI1p3Kmk0pUnuWPIpoREKXgk5XhJrq0IGWYlX0PVAsKFEE
 EUwBNxevAsVLNu3XWbbFoKmz+KOSTmJIXV8RGk5Ilu9a4x1gwa5M0SbMnvoSUzGrU0qz
 EHIoJcyEViWkDsC9nWD09Swuvhn04uVllIUMepRcqS6gNwa3l0ffztLZog3beTM7ixEC
 i3C0n7EtA1c1Nye1+qWiJ6Ws7N5beHasgdZNA9PIKQOtGyyVcnqpCxFn519mG8EkL9Ge
 l7A77apewC3qEA1EumEdGnEmUxbf4gSRFWdPX+13L1DaGkrJ/P+IkNirngwmEEJWRCBl
 FmDw==
X-Gm-Message-State: APjAAAXSTSMkac2EluuYxiNhXxt60mGRwvIzNGtmSFFy7akxaBlyetar
 1ZTicHlbpXTW7agl5oPzAFIT/PwCegHanXO1tQI=
X-Google-Smtp-Source: APXvYqy2qdjvGFEyVfH+HCnC4m6roo43HVkj5cfovY7yzUHvANgw9POBQ+vbh318GLdMzmTYpQDcuZxK3VD9smRReus=
X-Received: by 2002:a5e:990f:: with SMTP id t15mr1173125ioj.270.1569252491032; 
 Mon, 23 Sep 2019 08:28:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190918175109.23474.67039.stgit@localhost.localdomain>
 <20190918175249.23474.51171.stgit@localhost.localdomain>
 <20190923041330-mutt-send-email-mst@kernel.org>
 <CAKgT0UfFBO9h3heGSo+AaZgUNpy5uuOm3yh62bYwYJ5dq+t1gQ@mail.gmail.com>
 <20190923105746-mutt-send-email-mst@kernel.org>
In-Reply-To: <20190923105746-mutt-send-email-mst@kernel.org>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 23 Sep 2019 08:28:00 -0700
Message-ID: <CAKgT0Ufp0bdz3YkbAoKWd5DALFjAkHaSUn_UywW1+3hk4tjPSQ@mail.gmail.com>
Subject: Re: [PATCH v10 3/6] mm: Introduce Reported pages
To: "Michael S. Tsirkin" <mst@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_082812_211475_FFF16AD3 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.duyck[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Mon, Sep 23, 2019 at 8:00 AM Michael S. Tsirkin <mst@redhat.com> wrote:
>
> On Mon, Sep 23, 2019 at 07:50:15AM -0700, Alexander Duyck wrote:
> > > > +static inline void
> > > > +page_reporting_reset_boundary(struct zone *zone, unsigned int order, int mt)
> > > > +{
> > > > +     int index;
> > > > +
> > > > +     if (order < PAGE_REPORTING_MIN_ORDER)
> > > > +             return;
> > > > +     if (!test_bit(ZONE_PAGE_REPORTING_ACTIVE, &zone->flags))
> > > > +             return;
> > > > +
> > > > +     index = get_reporting_index(order, mt);
> > > > +     reported_boundary[index] = &zone->free_area[order].free_list[mt];
> > > > +}
> > >
> > > So this seems to be costly.
> > > I'm guessing it's the access to flags:
> > >
> > >
> > >         /* zone flags, see below */
> > >         unsigned long           flags;
> > >
> > >         /* Primarily protects free_area */
> > >         spinlock_t              lock;
> > >
> > >
> > >
> > > which is in the same cache line as the lock.
> >
> > I'm not sure what you mean by this being costly?
>
> I've just been wondering why does will it scale report a 1.5% regression
> with this patch.

Are you talking about data you have collected from a test you have
run, or the data I have run?

In the case of the data I have run I notice almost no difference as
long as the pages are not actually being madvised. Once I turn on the
madvise then I start seeing the regression, but almost all of that is
due to page zeroing/faulting. There isn't expected to be a gain from
this patchset until you start having guests dealing with memory
overcommit on the host. Then at that point the patch set should start
showing gains when the madvise bits are enabled in QEMU.

Also the test I have been running is a modified version of the
page_fault1 test to specifically target transparent huge pages in
order to make this test that much more difficult, the standard
page_fault1 test wasn't showing much of anything since the overhead
for breaking a 2M page into 512 4K pages and zeroing those
individually in the guest  was essentially drowning out the effect of
the patches themselves.

- Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
