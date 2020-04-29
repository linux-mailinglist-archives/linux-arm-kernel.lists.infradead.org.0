Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC331BDCB8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 14:54:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SbY9rCd383GNiizzMvL0q8340sCBxR8DGeLo9c/3ea8=; b=CAaaOL1Z67oPk/
	Pnio7UXTZVQuQqt5vrv31FHD/XM88beHaQ1DDjiyDSUbe0Yv6G8oKq0mG/kUyCbGjwaW+HhEA0sPY
	hDV1MiYjCxW0qKI5tipFGQXC3xs69o8uPkuSXoYPudD6gRGCMkFSDArdGCtNdX6C8tvz9YIjg+mpA
	ynYn30vzuER3cJzbjHsVqAGj7D6p/LAjd+Y0fRWRxUTwkCiJvunF3KRF/K7dLiBdfwTIX/o/qKjsw
	/T5LOFvw4QTtqvDLE1t0w9yK0EsiIikNINZXsFBCqr5NjLQ0prDkbCO9iHtFSeiV800IyCiAKgNlZ
	UhFkxDAc3JUeSZ7v8cRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTmDl-0004Ce-Lc; Wed, 29 Apr 2020 12:53:49 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jTmDc-000427-9q; Wed, 29 Apr 2020 12:53:40 +0000
Date: Wed, 29 Apr 2020 05:53:40 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH 2/7] mm: Move pt_mm within struct page
Message-ID: <20200429125340.GR29705@bombadil.infradead.org>
References: <20200428194449.22615-1-willy@infradead.org>
 <20200428194449.22615-3-willy@infradead.org>
 <CAMuHMdUw38VD8WJe5Zbaudnee74ZgLwbfhRwU8Pi9ALitre+_Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdUw38VD8WJe5Zbaudnee74ZgLwbfhRwU8Pi9ALitre+_Q@mail.gmail.com>
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux MM <linux-mm@kvack.org>, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 09:34:02AM +0200, Geert Uytterhoeven wrote:
> > +++ b/include/linux/mm_types.h
> > @@ -149,11 +149,8 @@ struct page {
> >                                         pgtable_t pmd_huge_pte;
> >                                 };
> >                         };
> > -                       unsigned long _pt_pad_2;        /* mapping */
> > -                       union {
> > -                               struct mm_struct *pt_mm; /* x86 pgds only */
> > -                               atomic_t pt_frag_refcount; /* powerpc */
> > -                       };
> > +                       struct mm_struct *pt_mm;
> > +                       atomic_t pt_frag_refcount; /* powerpc */
> 
> So here is now an implicit hole on 64-bit platforms, right?
> Do we have any where alignof(long) != 8?

There's an implicit hole if someone's turned on spinlock debugging and
has split pagetable locks.  Without the need to allocate the spinlock
separately, the ptl will actually move from the same word as 'private'
to the same word as 'index', freeing up 'private' entirely.  I don't
intend to depend on that, but it's not quite as critical to line up the
various members of struct page as it used to be.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
