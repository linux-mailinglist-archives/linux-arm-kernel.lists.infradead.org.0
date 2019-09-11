Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52011AF8D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:24:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mt4sx/e7xrKOE0J+iVEQoIu5aV6EGrhm0W6UzHaI8/M=; b=STCt0qTVlV1Ygf
	NmOUaOCmo1Q5TZuXsnwO8YFIUusUeZGhVkpvas2OqwvxD+89j8tOv8gVSWnQF3Yak7WRcuStbbb+Y
	nSw7wjIJ42L+V0Tir0qOT0Ti+mdYH63ZyNn7H5nsL3BuLQ2aTG/VOzQvOSWFSt+Z/2fWHAF2itsl+
	3G/1wDe6qg5OvNkCRQWvWELoMkasmZoSzuR9TjDW/WSS0P3bBjhR5BO1VspkkhheggG8zBvWuaAXl
	+wkpWmfCUO7nDJxavYl/2WRWiC2fXz/FIBt+ymAkfdGHvOnda06h01u2C6vl0eCbDPkr50MYklUQ1
	+lhqLDAVnVifm08fHPAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7yrC-0002J3-Lm; Wed, 11 Sep 2019 09:24:10 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7yqv-0002IH-9U
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 09:23:55 +0000
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 389C211A27
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 09:23:52 +0000 (UTC)
Received: by mail-qk1-f197.google.com with SMTP id x186so4339087qke.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 02:23:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mYSD9hRnX/6v3ywsydqfkpFUdOIKRrBI76zwVnPyG4o=;
 b=Y+qsBGgKGlysnETcqRFoXv7r8yCww2AtmhFx5A/yBPctlnmUppNoPKWmZyw1pfv20z
 rcvSODvvnI4MzcDk5+AcHuKnuEkSmK9+WPgsUe2fQBCDHP8G2OdpAPjbYaYCK6C7H1c9
 ly37LG1UQY875LdkxaM9tiCLqW2Lg1lrrB4k2cqeAUtKloTEMBUhNFkZS7UxOkzv7OYz
 Fe9lPTqGRUm4/5hwN0ysmidz+wQj6EB1LH1wVvNekAYi5uiLk+Ekz7fqyKEQI3DZDinL
 gLc6qCk7ViB2px16YTs24sfuCRctLdxb7BC/hKNtjHt4QqyP5zMb1izml/dIBZeerYDp
 V8LQ==
X-Gm-Message-State: APjAAAX5NlZcBMeMW+zB8JkPa1SCDeWWfE2BODbmnPDbidRMYCLxhFtq
 0VfHHBzCtio/HBXBWoO7e8j54yt889lxmwMKM+hdVrzN9Rj0MkU6psonB7iRR+snsX83zrkkRVm
 iQGbOqR5bsk1kakc8OBfaXCj9nHYJA35ndw4=
X-Received: by 2002:a37:a503:: with SMTP id o3mr33610736qke.115.1568193831418; 
 Wed, 11 Sep 2019 02:23:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz8QR5cKcd/uXRYlQ318mPxE6jSP+97aQIMCCQ/RUZeDP873f/PJ5B1bFEAkiTG92ijMAd8cg==
X-Received: by 2002:a37:a503:: with SMTP id o3mr33610704qke.115.1568193831205; 
 Wed, 11 Sep 2019 02:23:51 -0700 (PDT)
Received: from redhat.com ([80.74.107.118])
 by smtp.gmail.com with ESMTPSA id r13sm5657063qkm.48.2019.09.11.02.23.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Sep 2019 02:23:50 -0700 (PDT)
Date: Wed, 11 Sep 2019 05:23:40 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [virtio-dev] Re: [PATCH v9 0/8] stg mail -e --version=v9 \
Message-ID: <20190911051819-mutt-send-email-mst@kernel.org>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190910124209.GY2063@dhcp22.suse.cz>
 <CAKgT0Udr6nYQFTRzxLbXk41SiJ-pcT_bmN1j1YR4deCwdTOaUQ@mail.gmail.com>
 <20190910144713.GF2063@dhcp22.suse.cz>
 <CAKgT0UdB4qp3vFGrYEs=FwSXKpBEQ7zo7DV55nJRO2C-KCEOrw@mail.gmail.com>
 <20190910161818.GF2797@work-vm>
 <f74117db-225d-92cb-9476-22c0f752659d@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f74117db-225d-92cb-9476-22c0f752659d@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_022353_376813_939609F3 
X-CRM114-Status: GOOD (  34.73  )
X-Spam-Score: -3.5 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [80.74.107.118 listed in dnsbl.sorbs.net]
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
 kvm list <kvm@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Alexander Duyck <alexander.duyck@gmail.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm <linux-mm@kvack.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>, will@kernel.org,
 Andrea Arcangeli <aarcange@redhat.com>, virtio-dev@lists.oasis-open.org,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Matthew Wilcox <willy@infradead.org>, "Wang, Wei W" <wei.w.wang@intel.com>,
 ying.huang@intel.com, Rik van Riel <riel@surriel.com>,
 "Dr. David Alan Gilbert" <dgilbert@redhat.com>,
 Dan Williams <dan.j.williams@intel.com>, lcapitulino@redhat.com,
 linux-arm-kernel@lists.infradead.org, Oscar Salvador <osalvador@suse.de>,
 Nitesh Narayan Lal <nitesh@redhat.com>, Dave Hansen <dave.hansen@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Fengguang Wu <fengguang.wu@intel.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 06:22:37PM +0200, David Hildenbrand wrote:
> On 10.09.19 18:18, Dr. David Alan Gilbert wrote:
> > * Alexander Duyck (alexander.duyck@gmail.com) wrote:
> >> On Tue, Sep 10, 2019 at 7:47 AM Michal Hocko <mhocko@kernel.org> wrote:
> >>>
> >>> On Tue 10-09-19 07:42:43, Alexander Duyck wrote:
> >>>> On Tue, Sep 10, 2019 at 5:42 AM Michal Hocko <mhocko@kernel.org> wrote:
> >>>>>
> >>>>> I wanted to review "mm: Introduce Reported pages" just realize that I
> >>>>> have no clue on what is going on so returned to the cover and it didn't
> >>>>> really help much. I am completely unfamiliar with virtio so please bear
> >>>>> with me.
> >>>>>
> >>>>> On Sat 07-09-19 10:25:03, Alexander Duyck wrote:
> >>>>> [...]
> >>>>>> This series provides an asynchronous means of reporting to a hypervisor
> >>>>>> that a guest page is no longer in use and can have the data associated
> >>>>>> with it dropped. To do this I have implemented functionality that allows
> >>>>>> for what I am referring to as unused page reporting
> >>>>>>
> >>>>>> The functionality for this is fairly simple. When enabled it will allocate
> >>>>>> statistics to track the number of reported pages in a given free area.
> >>>>>> When the number of free pages exceeds this value plus a high water value,
> >>>>>> currently 32, it will begin performing page reporting which consists of
> >>>>>> pulling pages off of free list and placing them into a scatter list. The
> >>>>>> scatterlist is then given to the page reporting device and it will perform
> >>>>>> the required action to make the pages "reported", in the case of
> >>>>>> virtio-balloon this results in the pages being madvised as MADV_DONTNEED
> >>>>>> and as such they are forced out of the guest. After this they are placed
> >>>>>> back on the free list,
> >>>>>
> >>>>> And here I am reallly lost because "forced out of the guest" makes me
> >>>>> feel that those pages are no longer usable by the guest. So how come you
> >>>>> can add them back to the free list. I suspect understanding this part
> >>>>> will allow me to understand why we have to mark those pages and prevent
> >>>>> merging.
> >>>>
> >>>> Basically as the paragraph above mentions "forced out of the guest"
> >>>> really is just the hypervisor calling MADV_DONTNEED on the page in
> >>>> question. So the behavior is the same as any userspace application
> >>>> that calls MADV_DONTNEED where the contents are no longer accessible
> >>>> from userspace and attempting to access them will result in a fault
> >>>> and the page being populated with a zero fill on-demand page, or a
> >>>> copy of the file contents if the memory is file backed.
> >>>
> >>> As I've said I have no idea about virt so this doesn't really tell me
> >>> much. Does that mean that if somebody allocates such a page and tries to
> >>> access it then virt will handle a fault and bring it back?
> >>
> >> Actually I am probably describing too much as the MADV_DONTNEED is the
> >> hypervisor behavior in response to the virtio-balloon notification. A
> >> more thorough explanation of it can be found by just running "man
> >> madvise", probably best just to leave it at that since I am probably
> >> confusing things by describing hypervisor behavior in a kernel patch
> >> set.
> >>
> >> For the most part all the page reporting really does is provide a way
> >> to incrementally identify unused regions of memory in the buddy
> >> allocator. That in turn is used by virtio-balloon in a polling thread
> >> to report to the hypervisor what pages are not in use so that it can
> >> make a decision on what to do with the pages now that it knows they
> >> are unused.
> >>
> >> All this is providing is just a report and it is optional if the
> >> hypervisor will act on it or not. If the hypervisor takes some sort of
> >> action on the page, then the expectation is that the hypervisor will
> >> use some sort of mechanism such as a page fault to discover when the
> >> page is used again.
> > 
> > OK, that's interestingly different (but OK) from some other schemes that
> > hav ebeen described which *require* the guest to somehow indicate the
> > page is in use before starting to use the page again.
> > 
> 
> virtio-balloon also has a mode where the guest would not have to
> indicate to the host before re-using a page. Only
> VIRTIO_BALLOON_F_MUST_TELL_HOST enforces this. So it's not completely new.

VIRTIO_BALLOON_F_MUST_TELL_HOST is a bit different.
When it's not set, guest still must tell host about
pages in use, it just can batch these notifications
sending them possibly after page has been used.
So even with VIRTIO_BALLOON_F_MUST_TELL_HOST off you don't
skip the notification.


From hypervisor point of view, this feature is very much like adding
page to the balloon and immediately taking it out of the balloon again,
just doing it in one operation.

The main difference is the contents of the page, which matters
with poisoning: in that case hypervisor is expected to hand
back page with the poisoning content. Not so with regular
deflate where page contents is undefined.

Well and also the new interface is optimized for large chunks
of memory since we'll likely be dealing with such.

> > Dave
> 
> 
> -- 
> 
> Thanks,
> 
> David / dhildenb

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
