Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36120AEDA7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 16:49:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aPs3ntkeOa97TMpf0mxOkWUo7XYrDMVwnjnSu0bXTtU=; b=sE6Z4Z1Q9GQG/u
	Ht4rc5eHpxY+dXQhvsWaQJaWBg6nRwCjJL8iKRDD8Ly3k+ZOrlx49AiiZVt44IaKwn+ZJPUJsTxmD
	NRRZWeDloc8RmQ0FHKzJpgMC+YPgWbHf/vfaTSArsEL2Lmpdd0Iq7YAkLT/2kMGhHPRLgKY9ehGQG
	+4ZOvy7JhH3P5wQWZscF4PjVGgXG9h6WR23uNY+7m6q5wBUQB0ap4d+mWI8+ToYODso+R71aqLz/9
	GpMC7mqwVnr1WsYCCFTCD3F6TduJH/N4PkzBGiu2TIrRI0DTxruK8K3HtG04maToxvq2zHc7YhYRT
	V8i+IOUhSNYb7zRE+hOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hS5-0006ka-2I; Tue, 10 Sep 2019 14:49:05 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hRt-0006kC-Iv
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 14:48:54 +0000
Received: by mail-io1-xd44.google.com with SMTP id r26so38016650ioh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 07:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y51Wmq0LRgJPRQu0wESyACMKgIN3oGN4hPyCwS8B9Fw=;
 b=PzcNTtgFRZmzMv0K1KK0mg45o4Yljkgb90mn498QkmecMBhhZ5hVU/NDRq0XyRodXv
 oqt8Gfa8DdtOS8BNXSn78trtFzo/cG4x2Q3hTi0E8/87ACzQRuE0GaG6NPFNj2w7i5hz
 d9eH/XfpdFJ4ZsSIItHV5fPjLK39IDFhjDsIgyoeiWYb/OgukBbYhH7k63i7aX9m43JY
 B2q7D5PGC8y5aL/e8xurQByjUcIrfbOUk1u3uk1YXpi2aKIq2f9GOVhCzAD0nNiZ6KBc
 mxNmVjxT2XEjrQHY1egt7O+EREMCd1qYYvBFoCb6XuBlHZGCELCMyobbvgTykr1X77AJ
 JGUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y51Wmq0LRgJPRQu0wESyACMKgIN3oGN4hPyCwS8B9Fw=;
 b=MJ255Z9vW+33OolvEEyR1zg7c4MBq7PSOzjsQwnqoDWuu0muwVGOY3TJqCEjWCX1kR
 rlMD7jXtZEddDDhO6YSL6QKolJ4puLrWFPCkzvC23ZgfAkqXykKJqcBbLZIygy3nwE21
 g/8pO13gpVJpbxx40tSN4vh7zlx95ttigYOtUySiOmrBl4vHHDZDgZpHpOZq2aHzV608
 3uOgLHIbUnnIY8ozz5VKEviy/pM+kp3weA5MQns6x1HBJlyXokYH+9c1XYmd+DsvS2sj
 6V4SlP7KMBbvOXbPoSjCZMVZucHjTEH0EhUkWSiKm/mIKC2TiPtHWgdcNcazYLy7XGuC
 mvIQ==
X-Gm-Message-State: APjAAAWeF/9TpHXI6JdlaHkC9u3wyobwTTAT0xZYQ8ejk3B1c/MvjIjt
 QI2RPqVu5Xs9dQ3I9LawDvdVBkwT5qEJXkF9HJ21NYBe
X-Google-Smtp-Source: APXvYqwN74shiAyKliNs3JxV0dTTuWrOoxH7hX54E/H8prvfohDIALH6Vobq+JG8UlF+hibP/Y2WKvw7cp3R4NGGfXs=
X-Received: by 2002:a5d:8908:: with SMTP id b8mr1353105ion.237.1568126932604; 
 Tue, 10 Sep 2019 07:48:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172520.10910.83100.stgit@localhost.localdomain>
 <20190910122030.GV2063@dhcp22.suse.cz>
In-Reply-To: <20190910122030.GV2063@dhcp22.suse.cz>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 10 Sep 2019 07:48:41 -0700
Message-ID: <CAKgT0Ufw1h45q9H5jraOJkRwvnrxfVNe99bVF1VWCLrzxCrMmg@mail.gmail.com>
Subject: Re: [PATCH v9 2/8] mm: Adjust shuffle code to allow for future
 coalescing
To: Michal Hocko <mhocko@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_074853_630316_413B88DD 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.duyck[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Tue, Sep 10, 2019 at 5:20 AM Michal Hocko <mhocko@kernel.org> wrote:
>
> On Sat 07-09-19 10:25:20, Alexander Duyck wrote:
> > From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> >
> > Move the head/tail adding logic out of the shuffle code and into the
> > __free_one_page function since ultimately that is where it is really
> > needed anyway. By doing this we should be able to reduce the overhead
> > and can consolidate all of the list addition bits in one spot.
>
> This changelog doesn't really explain why we want this. You are
> reshuffling the code, allright, but why do we want to reshuffle? Is the
> result readability a better code reuse or something else? Where
> does the claimed reduced overhead coming from?
>
> From a quick look buddy_merge_likely looks nicer than the code splat
> we have. Good.
>
> But then
>
> > Reviewed-by: Dan Williams <dan.j.williams@intel.com>
> > Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
>
> [...]
>
> > -     if (is_shuffle_order(order))
> > -             add_to_free_area_random(page, &zone->free_area[order],
> > -                             migratetype);
> > +     area = &zone->free_area[order];
> > +     if (is_shuffle_order(order) ? shuffle_pick_tail() :
> > +         buddy_merge_likely(pfn, buddy_pfn, page, order))
>
> Ouch this is just awful don't you think?

Yeah. I am going to go with Kirill's suggestion and probably do
something more along the lines of:
       bool to_tail;
        ...
        if (is_shuffle_order(order))
                to_tail = shuffle_pick_tail();
       else
                to_tail = buddy_merge_likely(pfn, buddy_pfn, page, order);

        if (to_tail)
                add_to_free_area_tail(page, area, migratetype);
        else
                add_to_free_area(page, area, migratetype);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
