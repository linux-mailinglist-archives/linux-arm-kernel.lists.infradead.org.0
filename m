Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6797CBB87C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 17:50:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ervNwl4BQmsXMcwdL4b+f11p5ypHtvg9gPOQoqXmzOA=; b=jYMJ2RWrLwcPMV
	Gieso3eitQcippnQEf4/iuBBXmQZ4VnsBoXq5uJUZMc1U39gUZ2LAo2l8FgoBwMBpQor6UfIu4Qz7
	Svu12HLOK7d2RYUdQTiObuRWmZ7LipPMEUuuPRijR8wKuPXin+1PzoFPK3Wvq9gaFJKV+qg2Bij9s
	lT2SNzwumAXOBDW8ajaq7+7gH9rv8yQ6UrzPSfJsTwrE1ZqDNOBg4eSP/sj9xSf3NspNCWitrlnvX
	QKDLlPZ/XpfPIsOUCxgVxfABXCh1j55kUSCGxZhuqSlJ6eaAGOHFO2bLnTKwXIHWBdt3VT5wgrnko
	5lQlCWaxuqCyk1EatyKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCQc4-0006DV-4a; Mon, 23 Sep 2019 15:50:56 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQaO-0006Cp-2Y
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 15:49:13 +0000
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A067D806D2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 15:49:11 +0000 (UTC)
Received: by mail-qk1-f200.google.com with SMTP id s14so18109622qkg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 08:49:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DtFe2+5JtbV/OwUJETgyRdR0XjjvYqOvroBO1aiGGnE=;
 b=C5yvtBsqi4udV909Kr884qlo4GN92EGRQP5lwf1JVYCDGOQ9iA6ivXRs65gz+BMXkr
 CDZ4E/p/rRM7Ky+p0QbIhZbzwyJy0YEMkqhVwb8HAMfP53tQo6pl7g7yQwar1DMGODFy
 zCJLX1ITVAxXUkWdpt8r5BbkznE5UCnuNiHsG0t4HY4iN9Wm+ulvgPCr3f2vMMurHqpn
 LWnznQyA3fai7AkfzQJ9Ua5CD4QZdSPcKHAKtZefASmMQUaUfrMBvdh8PO+5LjoAGJiy
 Z9Nzl7l3BeO6mBwJHaYNj4cyjexnEzmOIawTIRui+awlT8aJ7prUgKtflmWczTPprbQd
 /slQ==
X-Gm-Message-State: APjAAAXlcl5aSev9Kgf1tSrurGbyG5OmVKDHwAmlJhFnVyL+OPKDFJoO
 /TaOGS1LThvPAcL2ZnLmdsAxMmzoxXXII5ds8hLYU6FIry/TxN10yGzbPdNdYIYgq85E3NRyXAk
 QiVl+IjzV/bD8axMcZ1ArH4QtW41OirQ05eI=
X-Received: by 2002:a37:f61e:: with SMTP id y30mr500104qkj.208.1569253750896; 
 Mon, 23 Sep 2019 08:49:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzol6drxsIFmKvmhlgbnLArJa9kxX+uy/D+M1Of/zo/DzG9baRX9vu805PC9WY2snt/4bzaNA==
X-Received: by 2002:a37:f61e:: with SMTP id y30mr500077qkj.208.1569253750741; 
 Mon, 23 Sep 2019 08:49:10 -0700 (PDT)
Received: from redhat.com (bzq-79-176-40-226.red.bezeqint.net. [79.176.40.226])
 by smtp.gmail.com with ESMTPSA id v5sm7307386qtk.66.2019.09.23.08.49.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 08:49:09 -0700 (PDT)
Date: Mon, 23 Sep 2019 11:49:01 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v10 3/6] mm: Introduce Reported pages
Message-ID: <20190923114840-mutt-send-email-mst@kernel.org>
References: <20190918175109.23474.67039.stgit@localhost.localdomain>
 <20190918175249.23474.51171.stgit@localhost.localdomain>
 <20190923041330-mutt-send-email-mst@kernel.org>
 <CAKgT0UfFBO9h3heGSo+AaZgUNpy5uuOm3yh62bYwYJ5dq+t1gQ@mail.gmail.com>
 <20190923105746-mutt-send-email-mst@kernel.org>
 <CAKgT0Ufp0bdz3YkbAoKWd5DALFjAkHaSUn_UywW1+3hk4tjPSQ@mail.gmail.com>
 <20190923113722-mutt-send-email-mst@kernel.org>
 <baf3dd5c-9368-d621-a83a-114bb5ae8291@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <baf3dd5c-9368-d621-a83a-114bb5ae8291@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_084912_160724_9FCADE02 
X-CRM114-Status: GOOD (  22.67  )
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

On Mon, Sep 23, 2019 at 05:45:29PM +0200, David Hildenbrand wrote:
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

Exactly. That's what makes it interesting.

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
