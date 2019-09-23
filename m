Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34373BB88E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 17:51:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hgjg3WN64u9Gt2ugtHlKSU3/LrOpcEBp73x/8gQAn5M=; b=Xwd+ji6zDtC7RK
	XLnoMhvaw4jJTakPDNXfwb7ndOKdneiOfHRutCTJlGWx34D9Mzufh5/ZHAmrbaX0nqux+ut90AgEf
	3KLIxpcqcMiuqwvYk3Ilsc/JmszVbQaqcDyB69vXVldjPQuYBER3iPH1DVjtdXZGc+lYc8W8wWdJp
	eC7A9QLLSAupEfdMRB1WLsNkscD0/IMgCoLBMp2SwSpdq7VNk7Z1PD+wBkCV7Vl9PrO5eDBxxk51e
	7sJ7IMeNn9LC4DzGme3YTMsGGDvjnBkCRIAgNmKZsXS9DvxZUi/719D7zrR14wv0RMZI/vZOPzKfM
	Jtsr+b79LbIK14Q8RPTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCQcu-00086o-Hu; Mon, 23 Sep 2019 15:51:48 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQbp-0007dL-3K
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 15:50:51 +0000
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AA010C057F88
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 15:50:40 +0000 (UTC)
Received: by mail-qk1-f198.google.com with SMTP id n125so18126472qkc.16
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 08:50:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Cj6Y1lnq7bXcC3kz0vWm87eC1U075TsPfURyzMigVaw=;
 b=QsI6yGJa+IzfGd1GnagnwkY65QM6TyruGHSYxo+vjChXOVnIgaTtKp57HLMOfzIVRT
 qouXwZwa8s8yLjV6EUTC5cGiiDtar1XNK/MTgePDPxOWSl+9XZQUhY7qxFvlFLO0Ta8f
 F3hQjIoRqiTUagLSfoW8WXasMAkyFpjyq4Wf1HxANeI0OqyRFF5GwHbdJFuW/UUCB4fe
 49wpqsMiUN6QgYGHOB4mGNJpPpuoexZ6ylOQm6+h0HkoXhi94JV/13UiXNJzwh0Wgx28
 BkLlDsSk4NkPpAwoUXYLG/VQtY2qtD5BhToD34A2posMkcC+Q2CpmSr2lh98bYT1eClV
 0LQA==
X-Gm-Message-State: APjAAAU/GUoBjBlLdYVlAv4uQF5wmWmKWZVM9edfXPOUGLYEOtjYvUG/
 W2ZaGlkbBGRtsKh1o00MbZRognoXqZWFxTQPPeCKoNUxdbHiYHMMMrGXxqqKdl69DMaMmdCplNJ
 3iQUTjnhU/66jy1UxK/un31GO+J7GLbiZ4Jg=
X-Received: by 2002:a37:bc82:: with SMTP id m124mr466924qkf.231.1569253840053; 
 Mon, 23 Sep 2019 08:50:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxEKUtkTOCpbmKAVsuN5DEp8c5GEKKqBTQD9x7NMYUI+PUXnD6G5Fo6ixIl97M10Uj/81ScUg==
X-Received: by 2002:a37:bc82:: with SMTP id m124mr466905qkf.231.1569253839907; 
 Mon, 23 Sep 2019 08:50:39 -0700 (PDT)
Received: from redhat.com (bzq-79-176-40-226.red.bezeqint.net. [79.176.40.226])
 by smtp.gmail.com with ESMTPSA id g10sm5061349qki.41.2019.09.23.08.50.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 08:50:39 -0700 (PDT)
Date: Mon, 23 Sep 2019 11:50:31 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v10 3/6] mm: Introduce Reported pages
Message-ID: <20190923114946-mutt-send-email-mst@kernel.org>
References: <20190918175109.23474.67039.stgit@localhost.localdomain>
 <20190918175249.23474.51171.stgit@localhost.localdomain>
 <20190923041330-mutt-send-email-mst@kernel.org>
 <CAKgT0UfFBO9h3heGSo+AaZgUNpy5uuOm3yh62bYwYJ5dq+t1gQ@mail.gmail.com>
 <20190923105746-mutt-send-email-mst@kernel.org>
 <CAKgT0Ufp0bdz3YkbAoKWd5DALFjAkHaSUn_UywW1+3hk4tjPSQ@mail.gmail.com>
 <20190923113722-mutt-send-email-mst@kernel.org>
 <baf3dd5c-9368-d621-a83a-114bb5ae8291@redhat.com>
 <49395e48-175f-8483-77f5-5fc3aca8b7cb@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <49395e48-175f-8483-77f5-5fc3aca8b7cb@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_085042_263481_7AB55BC1 
X-CRM114-Status: GOOD (  22.80  )
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
 kvm list <kvm@vger.kernel.org>, Alexander Duyck <alexander.duyck@gmail.com>,
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

On Mon, Sep 23, 2019 at 05:47:24PM +0200, David Hildenbrand wrote:
> On 23.09.19 17:45, David Hildenbrand wrote:
> > On 23.09.19 17:37, Michael S. Tsirkin wrote:
> >> On Mon, Sep 23, 2019 at 08:28:00AM -0700, Alexander Duyck wrote:
> >>> On Mon, Sep 23, 2019 at 8:00 AM Michael S. Tsirkin <mst@redhat.com> wrote:
> >>>>
> >>>> On Mon, Sep 23, 2019 at 07:50:15AM -0700, Alexander Duyck wrote:
> >>>>>>> +static inline void
> >>>>>>> +page_reporting_reset_boundary(struct zone *zone, unsigned int order, int mt)
> >>>>>>> +{
> >>>>>>> +     int index;
> >>>>>>> +
> >>>>>>> +     if (order < PAGE_REPORTING_MIN_ORDER)
> >>>>>>> +             return;
> >>>>>>> +     if (!test_bit(ZONE_PAGE_REPORTING_ACTIVE, &zone->flags))
> >>>>>>> +             return;
> >>>>>>> +
> >>>>>>> +     index = get_reporting_index(order, mt);
> >>>>>>> +     reported_boundary[index] = &zone->free_area[order].free_list[mt];
> >>>>>>> +}
> >>>>>>
> >>>>>> So this seems to be costly.
> >>>>>> I'm guessing it's the access to flags:
> >>>>>>
> >>>>>>
> >>>>>>         /* zone flags, see below */
> >>>>>>         unsigned long           flags;
> >>>>>>
> >>>>>>         /* Primarily protects free_area */
> >>>>>>         spinlock_t              lock;
> >>>>>>
> >>>>>>
> >>>>>>
> >>>>>> which is in the same cache line as the lock.
> >>>>>
> >>>>> I'm not sure what you mean by this being costly?
> >>>>
> >>>> I've just been wondering why does will it scale report a 1.5% regression
> >>>> with this patch.
> >>>
> >>> Are you talking about data you have collected from a test you have
> >>> run, or the data I have run?
> >>
> >> About the kernel test robot auto report that was sent recently.
> > 
> > https://lkml.org/lkml/2019/9/21/112
> > 
> > And if I'm correct, that regression is observable in case reporting is
> > not enabled. (so with this patch applied only, e.g., on a bare-metal system)
> > 
> 
> To be even more precise: # CONFIG_PAGE_REPORTING is not set

Even if it was, I'd hope for 0 overhead when not present runtime.

-- 
MST

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
