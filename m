Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25353BD019
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 19:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DKhbQ4OnSetmAVa33v6gqDzclt0DCqTmMXFpPZMBcEQ=; b=BstSLpIUtSEP9Y
	s/6lUqBopEbPbc+ZZIKcl8L+7J/cqidQ2T2IKoU8gtAHVU14J/W4xQHCSyFeSMxZbOLdZ7BBT0DlO
	Res/ncKZqxWxdbeYA0RVkb3h72i7UHmjRIHshzSlEGUBosroOdqPMPrurVUh6vZboILWkQFiv0IdM
	6dnVtAsSkERw8NWiteUqp+igwP9JEzLPoPgzQ2Gg+PZAV/CpDeM/iV1fchE5Fu8BTmskH8kkzcefa
	gExARInM4/dbMq8ELt8wgPATuZomxziLQEznOdtoNynLzW9vdy1spMYyYMaWHyf/ulD0ImeCRmbxo
	pMDCuS6jMsa50yQGTa+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCoHw-0006Ej-Tn; Tue, 24 Sep 2019 17:07:45 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCoHc-0006Dz-DA
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 17:07:25 +0000
Received: by mail-io1-xd41.google.com with SMTP id j4so6215187iog.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 10:07:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lmspopvSKpX7B64KcDeaaqo7jPi/4Ao7F6ujlQxBuGE=;
 b=hcDEnqCq6c4biZl3J7K7tP0DKQ9JAzpWVtMOsVyhDsOwK1Ca7YXRaADqifdZsfBxK7
 5fowDdvrvKRMrOhFHJm0S1wSSZaVnkt7nE6t0r8wrldzrkt7jofiucDzmrDp4jtjIdGr
 VprKVbGpHUYmn0ePw6mO7ytb1umpXoLNto9BB1nw6xLSLimvL7FaiYm6rGYP8VJS3T/e
 Lqqc360+YVyzPJyJ0HLDEhHCtt+hrfFCOpzZ81xzmIMFbdOp1TqHgB6fgOmeJche3MSq
 43ZFEtB4puCyV22ccg7GBY9eLrnPIBLpvee33+WcBox/2wdUM+3Pbds3zhpY/FWgOXlL
 XtLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lmspopvSKpX7B64KcDeaaqo7jPi/4Ao7F6ujlQxBuGE=;
 b=YBpANsv0EhHqTXf1mLrJip0bTGf7fbM2cTLylkEC5qkRlC21uruTWYVEg1J+93N1fU
 3QgH2Ks+dR+HOF5QT54tZ9ALpV3lDUmVPlf199+qd4aP2bUMW5EfQVmtiEngTof5D1qe
 moMsK+IkwdC2nwj5ZD6b1zp29Pmh1KmFMO/0CKlmm6schjtLbEwS9UAoLf1ooXDtBSSZ
 I/muISkg+dnFuvj/5Tr5fbIMijq/H3mmJuMXDbAw4azEdARHFejz6ehni6NyOhk+1DEX
 kkDjTwgG3BmhzDx4yUUHzMxJQwTxLg5bkRvMP9gWWaqZUFJj+GwDsHLET5AIAUWuyC7u
 PumA==
X-Gm-Message-State: APjAAAVOcpxEbVhi5oqep/NeBbjvRB9Wq9mxMAYLPH6bKcHvECpy9wFV
 6/1fZaz7Z1RgcaTYBnwu9VCuZUrQJ0DP1hRs6QB7TFXW
X-Google-Smtp-Source: APXvYqzTx4/P0xGyBwbu8UrJ3aYyizZ4e4JPbj3P3E7+rFvspFGEEfawedIVxihESqhtv9T0LO547VkHQL4a0Kac6WE=
X-Received: by 2002:a6b:ac85:: with SMTP id v127mr4175604ioe.97.1569344843093; 
 Tue, 24 Sep 2019 10:07:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190918175109.23474.67039.stgit@localhost.localdomain>
 <20190924142342.GX23050@dhcp22.suse.cz>
 <d2a7acdd-3bb9-05c9-42d0-70a500801cd6@redhat.com>
In-Reply-To: <d2a7acdd-3bb9-05c9-42d0-70a500801cd6@redhat.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 24 Sep 2019 10:07:11 -0700
Message-ID: <CAKgT0UedoNBk3cp64SpCzXJqjtqBWZQSB7QzF7R_jhTDXbzNPg@mail.gmail.com>
Subject: Re: [PATCH v10 0/6] mm / virtio: Provide support for unused page
 reporting
To: David Hildenbrand <david@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_100724_449150_55440501 
X-CRM114-Status: GOOD (  24.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.duyck[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Tue, Sep 24, 2019 at 8:32 AM David Hildenbrand <david@redhat.com> wrote:
>
> On 24.09.19 16:23, Michal Hocko wrote:
> > On Wed 18-09-19 10:52:25, Alexander Duyck wrote:
> > [...]
> >> In order to try and keep the time needed to find a non-reported page to
> >> a minimum we maintain a "reported_boundary" pointer. This pointer is used
> >> by the get_unreported_pages iterator to determine at what point it should
> >> resume searching for non-reported pages. In order to guarantee pages do
> >> not get past the scan I have modified add_to_free_list_tail so that it
> >> will not insert pages behind the reported_boundary.
> >>
> >> If another process needs to perform a massive manipulation of the free
> >> list, such as compaction, it can either reset a given individual boundary
> >> which will push the boundary back to the list_head, or it can clear the
> >> bit indicating the zone is actively processing which will result in the
> >> reporting process resetting all of the boundaries for a given zone.
> >
> > Is this any different from the previous version? The last review
> > feedback (both from me and Mel) was that we are not happy to have an
> > externally imposed constrains on how the page allocator is supposed to
> > maintain its free lists.
> >
> > If this is really the only way to go forward then I would like to hear
> > very convincing arguments about other approaches not being feasible.
>
> Adding to what Alexander said, I don't consider the other approaches
> (especially the bitmap-based approach Nitesh is currently working on)
> infeasible. There might be more rough edges (e.g., sparse zones) and
> eventually sometimes a little more work to be done, but definitely
> feasible. Incorporating stuff into the buddy might make some tasks
> (e.g., identify free pages) more efficient.
>
> I still somewhat like the idea of capturing hints of free pages (in
> whatever data structure) and then going over the hints, seeing if the
> pages are still free. Then only temporarily isolating the still-free
> pages, reporting them, and un-isolating them after they were reported. I
> like the idea that the pages are not fake-allocated but only temporarily
> blocked. That works nicely e.g., with the movable zone (contain only
> movable data).

One other change in this patch set is that I split the headers so that
there is an internal header that resides in the mm tree and an
external one that provides the page reporting device structure and the
register/unregister functions. All that virtio-balloon knows is that
it is registering a notifier and will be called with scatter gather
lists for memory that is not currently in use by the kernel. It has no
visibility into the internal free_areas or the current state of the
buddy allocator. Rather than having two blocks that are both trying to
maintain that state, I have consolidated it all into the buddy
allocator with page reporting.

> But anyhow, after decades of people working on free page
> hinting/reporting, I am happy with anything that gets accepted upstream :D

Agreed. After working on this for 9 months I would be happy to get
something upstream that addresses this.

- Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
