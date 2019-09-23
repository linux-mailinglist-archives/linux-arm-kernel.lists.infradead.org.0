Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41712BB76C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 17:01:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UpnkxiYra391jxiXql1RLG1LlTNUtl3D0uMgLW/KY6w=; b=QyeklOEjQkYxke
	uuTz8idUNrNqNHKdbrT/hH4VZshOV2XG6s5t4dBOhmpocLnE/MVRHsZTooquX6EKJWxElOAzushZv
	qFYUWNJi+IH8mmhEek8Yp1EcqcRsFhuqlbleHepdkGLbv2Cm2NnXoBLtwSUoknLUMAFGQeMG1oq3b
	nAUCmIg+O1fuW8oXJPof34p3cPE4JEz+R0gq5B9YPrJGn5uFnBIYhxOn24xCcekSZdPis371xS4P6
	KJWC2u4vEABxM8+eIcEq05AD/5nKNMO29dUZ/WqijyH5fVgcqJLK2Obr042+UDNOYDa7muI23Nr8x
	Lv9/Pc9Ns2ldghroyigA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCPqL-0006Q5-82; Mon, 23 Sep 2019 15:01:37 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCPpL-0006Mi-7e
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 15:00:36 +0000
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8E5887652E
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 15:00:33 +0000 (UTC)
Received: by mail-qt1-f197.google.com with SMTP id c8so17569601qtd.20
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 08:00:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QNoXmel+GlMigZDcUd1vYpLYfL7zFiKdxBF3l1k0lPQ=;
 b=r3gG9lJ+tdMF+S6zQOXsfRWRhM3lA7f2cUQ5LPO4WBdSalzF8xkszkawofxbBFh6aN
 TWi4qQzKM5gyY+DQdXW3YAD6aDrodRTtH0VutjL9Jc2NR5JQVQg0leHwAMLGHSdrNqKx
 7H0PgmTt/QZKi25VAwVWWYlKzI/EBIqtTk2ErsW4yGuNR62TTIhwgTv4MkCu9vcXtaAK
 5r1InPTueLU7R2BRzyF1LnYaY4wc4oFokBkwinXHQYllYDLfIoOdxzJydKnA4F0rikFy
 wlc0JcLUGrGzFkpNSckK02brmqIRjArm1K/6TKPlHU/Bdv0Ckb8I624zWQhpBuTiwuZW
 QwzQ==
X-Gm-Message-State: APjAAAUNZUT+OGDQTjPWHjDStVsNYs0m1b8xg/miUJ/f65bH8V3tCtRr
 tox6NSNGSeleHuisEcKlpzQ7zzHGMh67AM5SXcx+JOsFrjWGBQ7wpOpK6+7/VkNEUJbuo51GbO2
 jMuJjD4Ii6JgBnLWfKcAw5PjydWhQt1vDo/s=
X-Received: by 2002:ac8:2c50:: with SMTP id e16mr317607qta.257.1569250832851; 
 Mon, 23 Sep 2019 08:00:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyFUJn6BvXztT9hmWoUunZD0ZUcW4uUuFms3FLLwyr9jPXb7ZlVF254P3OydfcVZPOAJdBaaA==
X-Received: by 2002:ac8:2c50:: with SMTP id e16mr317578qta.257.1569250832651; 
 Mon, 23 Sep 2019 08:00:32 -0700 (PDT)
Received: from redhat.com (bzq-79-176-40-226.red.bezeqint.net. [79.176.40.226])
 by smtp.gmail.com with ESMTPSA id j17sm5330553qki.99.2019.09.23.08.00.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 08:00:31 -0700 (PDT)
Date: Mon, 23 Sep 2019 11:00:23 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [PATCH v10 3/6] mm: Introduce Reported pages
Message-ID: <20190923105746-mutt-send-email-mst@kernel.org>
References: <20190918175109.23474.67039.stgit@localhost.localdomain>
 <20190918175249.23474.51171.stgit@localhost.localdomain>
 <20190923041330-mutt-send-email-mst@kernel.org>
 <CAKgT0UfFBO9h3heGSo+AaZgUNpy5uuOm3yh62bYwYJ5dq+t1gQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKgT0UfFBO9h3heGSo+AaZgUNpy5uuOm3yh62bYwYJ5dq+t1gQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_080035_321515_FF5C7FD0 
X-CRM114-Status: GOOD (  24.35  )
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

On Mon, Sep 23, 2019 at 07:50:15AM -0700, Alexander Duyck wrote:
> > > +static inline void
> > > +page_reporting_reset_boundary(struct zone *zone, unsigned int order, int mt)
> > > +{
> > > +     int index;
> > > +
> > > +     if (order < PAGE_REPORTING_MIN_ORDER)
> > > +             return;
> > > +     if (!test_bit(ZONE_PAGE_REPORTING_ACTIVE, &zone->flags))
> > > +             return;
> > > +
> > > +     index = get_reporting_index(order, mt);
> > > +     reported_boundary[index] = &zone->free_area[order].free_list[mt];
> > > +}
> >
> > So this seems to be costly.
> > I'm guessing it's the access to flags:
> >
> >
> >         /* zone flags, see below */
> >         unsigned long           flags;
> >
> >         /* Primarily protects free_area */
> >         spinlock_t              lock;
> >
> >
> >
> > which is in the same cache line as the lock.
> 
> I'm not sure what you mean by this being costly?

I've just been wondering why does will it scale report a 1.5% regression
with this patch.

> Also, at least on my system, pahole seems to indicate they are in
> different cache lines.
> 
> /* --- cacheline 3 boundary (192 bytes) --- */
> struct zone_padding        _pad1_;               /*   192     0 */
> struct free_area           free_area[11];        /*   192  1144 */
> /* --- cacheline 20 boundary (1280 bytes) was 56 bytes ago --- */
> long unsigned int          flags;                /*  1336     8 */
> /* --- cacheline 21 boundary (1344 bytes) --- */
> spinlock_t                 lock;                 /*  1344     4 */
> 
> Basically these flags aren't supposed to be touched unless we are
> holding the lock anyway so I am not sure it would be all that costly
> for this setup. Basically we are holding the lock when the flag is set
> or cleared, and we only set it if it is not already set. If needed
> though I suppose I could look at moving the flags if you think that is
> an issue. However I would probably need to add some additional padding
> to prevent the lock from getting into the same cache line as the
> free_area values.

-- 
MST

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
