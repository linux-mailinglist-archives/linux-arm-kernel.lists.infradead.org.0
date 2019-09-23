Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51624BB9C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 18:39:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5NFl9ssBqS1+GIeZHINxPOf+9yVRuWJ6N1KNvKkAXEw=; b=c3eacT7BXjU276
	xWQGOFKBi/4OSaP9Va35gZU9QRkfhFVgusaCbRtTGwvWU2NzrnizjrfGwpGTxhOS7YxzTRP+Icegl
	pPmSFgRwdGCQ6mmLFvojEjws1zUqwjNKSxcNA/SPqP+0B9KASd8B+m7cg/y0Vufe2bKe5H7As95mM
	PqD/UEHqcXbo/B4krl73yRyFFNngQhc+wNH/Qv6ri+MmMvXiH6rLzpblCIWg8yruDlFvoBbqWeeR2
	TA4chjd3rmnNqFXqyB+h9MMTouedhGhC6sjy2d6K2/W7kLV/WYKfsmlCF/VnmR6KhHcS/6cVZ47uZ
	phNZk20EKB0h0Y1wHBUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCRNA-0005jg-Py; Mon, 23 Sep 2019 16:39:36 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCRMr-0005iu-1x
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 16:39:19 +0000
Received: by mail-io1-xd42.google.com with SMTP id j4so34967393iog.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 09:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RFFieyhD7JzCXe5ifm6amcb6+lfbnrSI8cAPQ36MW7I=;
 b=R858SkgO5YchV55UFuoykyOJ1d6HANKAKcyNyXSnFjlDxWsun6RWo/szs6mFJe3Gl7
 SpP8oCIxZAzjM/+mZzbvhek60QM+vQZHmgd6exOWOQ1rxiMl1xshylLYEEfBAIaAMWij
 x17aBb18cOyd7Gg7jK7CY1adHHq+3GNeBb3vmLGvWhmMy13uO5l0VWhyyBV6WJQv0V4B
 oHsBuvX5GMOyTZdaE6GRZMK00UfWpjPcuIlrVD0sbAPdGTfcZrfg/SegWSPVy3b6T3s9
 rAjNxT2QY7bGNbKEXSyko1pUSYiwD2IyNLRIo+29fcBqwwXyf2UpdDm4+eCsUdBcDf0M
 NGnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RFFieyhD7JzCXe5ifm6amcb6+lfbnrSI8cAPQ36MW7I=;
 b=WAeZH13x7XiUzKUFK9bb07z6r1fLV+Qdoo5GfOzsYGa80e0ZuEybPPULeOPdLv/R+9
 Aal3DbaZguaQm7GcughzCn0AkrwvrecarVtLKR/6Qn/XBfld7X1CYWVwsAi6t6D4fNaR
 qZF8vHbLrdQsHV85S7osobRfMOvaHIqujMN1/WP+nEOoBkAHY8ID/nPjWV9AQQMm2fRT
 +0Fa7aOVRHhFYL0NSm3uC3SAt1O67qTATm7MFIpWStrNY0Q1XT42f14OMSuK4bNn8c5A
 gqMswrIOvGUk6lZLo2Ri0UyjSCCBltuykYH+as3XvglgNQWtcAdqYFnyN1CPpleZDuUa
 Lkeg==
X-Gm-Message-State: APjAAAVg72pZzGVREa08TxEeEoR9+mMMpaPUO1QXMYkQb4adq/j7Lx1r
 tP2S/1GLSlN71Qxw33ipDlM3A9U+NUIvB6n1CLE=
X-Google-Smtp-Source: APXvYqy3q7z0+B3zJnmH5mJA6m7Vv33JAsSr6VocMaurzTxah7VBiRqRJR2aBGpPsIduojTBLoR7xf0CVw90j+76/ro=
X-Received: by 2002:a02:246:: with SMTP id 67mr278140jau.121.1569256755054;
 Mon, 23 Sep 2019 09:39:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190918175109.23474.67039.stgit@localhost.localdomain>
 <20190918175249.23474.51171.stgit@localhost.localdomain>
 <20190923041330-mutt-send-email-mst@kernel.org>
 <CAKgT0UfFBO9h3heGSo+AaZgUNpy5uuOm3yh62bYwYJ5dq+t1gQ@mail.gmail.com>
 <20190923105746-mutt-send-email-mst@kernel.org>
 <CAKgT0Ufp0bdz3YkbAoKWd5DALFjAkHaSUn_UywW1+3hk4tjPSQ@mail.gmail.com>
 <20190923113722-mutt-send-email-mst@kernel.org>
 <baf3dd5c-9368-d621-a83a-114bb5ae8291@redhat.com>
In-Reply-To: <baf3dd5c-9368-d621-a83a-114bb5ae8291@redhat.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 23 Sep 2019 09:39:03 -0700
Message-ID: <CAKgT0UePDMnXRUxwWnkwb-WZTD+M02bZk+PbuHJ3i9ATzkM0WA@mail.gmail.com>
Subject: Re: [PATCH v10 3/6] mm: Introduce Reported pages
To: David Hildenbrand <david@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_093917_101696_D619FC32 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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
 kvm list <kvm@vger.kernel.org>, "Michael S. Tsirkin" <mst@redhat.com>,
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

On Mon, Sep 23, 2019 at 8:46 AM David Hildenbrand <david@redhat.com> wrote:
>
> On 23.09.19 17:37, Michael S. Tsirkin wrote:
> > On Mon, Sep 23, 2019 at 08:28:00AM -0700, Alexander Duyck wrote:
> >> On Mon, Sep 23, 2019 at 8:00 AM Michael S. Tsirkin <mst@redhat.com> wrote:
> >>>
> >>> On Mon, Sep 23, 2019 at 07:50:15AM -0700, Alexander Duyck wrote:
> >>>>>> +static inline void
> >>>>>> +page_reporting_reset_boundary(struct zone *zone, unsigned int order, int mt)
> >>>>>> +{
> >>>>>> +     int index;
> >>>>>> +
> >>>>>> +     if (order < PAGE_REPORTING_MIN_ORDER)
> >>>>>> +             return;
> >>>>>> +     if (!test_bit(ZONE_PAGE_REPORTING_ACTIVE, &zone->flags))
> >>>>>> +             return;
> >>>>>> +
> >>>>>> +     index = get_reporting_index(order, mt);
> >>>>>> +     reported_boundary[index] = &zone->free_area[order].free_list[mt];
> >>>>>> +}
> >>>>>
> >>>>> So this seems to be costly.
> >>>>> I'm guessing it's the access to flags:
> >>>>>
> >>>>>
> >>>>>         /* zone flags, see below */
> >>>>>         unsigned long           flags;
> >>>>>
> >>>>>         /* Primarily protects free_area */
> >>>>>         spinlock_t              lock;
> >>>>>
> >>>>>
> >>>>>
> >>>>> which is in the same cache line as the lock.
> >>>>
> >>>> I'm not sure what you mean by this being costly?
> >>>
> >>> I've just been wondering why does will it scale report a 1.5% regression
> >>> with this patch.
> >>
> >> Are you talking about data you have collected from a test you have
> >> run, or the data I have run?
> >
> > About the kernel test robot auto report that was sent recently.
>
> https://lkml.org/lkml/2019/9/21/112
>
> And if I'm correct, that regression is observable in case reporting is
> not enabled. (so with this patch applied only, e.g., on a bare-metal system)

Thanks. For whatever reason it looks like my gmail decided to pop it
out of the thread so I hadn't seen it yet this morning.

I'll have to look into it. It doesn't make much sense to me why this
would have this much impact since especially in the disabled case the
changes should be quite small.

- Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
