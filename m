Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A0858344
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 15:18:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QjAcgUyILtKvThxGcyE4AGn7Z21lQZSj0imastQFE7o=; b=cB/JzZX4I3dVj+
	H3zP3nu2wsDwiJWIEIbfC/k6QQa0iFB51MWCx0B6eER1H7OHM2OdogQCE3A6u2leFFVkIzTHr/T27
	RbkGwsNj+kst8R7yUdQmEsoaw0L/bbqXK1wws5whvZcutKvm+TxsvwEvB/pu8gUaldxQ2klXj6i6h
	zAD8ivuruJ74z5SQu/wvMmjvgEiHN2v2Lk9fTLpghb0fHJJrxJoP5hBZENOs6Df24LsFP66dJqkiC
	j5yjRptyIYtD9kWBZi+etumyyaKlRH65k7ExGtlIQ/kw49DWfxtJhoOdU14kFZYT46/FftcEuwnhr
	FkRg7+Bx4/T1xbh/S08g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgUIg-00041n-O4; Thu, 27 Jun 2019 13:18:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgUIP-000412-MC
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 13:18:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EE85F360;
 Thu, 27 Jun 2019 06:18:36 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6F4D83F246;
 Thu, 27 Jun 2019 06:18:36 -0700 (PDT)
Date: Thu, 27 Jun 2019 14:18:34 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [RFC] arm64: Detecting tagged addresses
Message-ID: <20190627131834.GE34530@e119886-lin.cambridge.arm.com>
References: <20190619121619.GV20984@e119886-lin.cambridge.arm.com>
 <20190626174502.GH29672@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626174502.GH29672@arrakis.emea.arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_061837_827123_91439F25 
X-CRM114-Status: GOOD (  31.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrey Konovalov <andreyknvl@google.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 linux-kselftest@vger.kernel.org, vincenzo.frascino@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 06:45:03PM +0100, Catalin Marinas wrote:
> Hi Andrew,
> 
> Cc'ing Luc (sparse maintainer) who's been involved in the past
> discussions around static checking of user pointers:
> 
> https://lore.kernel.org/linux-arm-kernel/20180905190316.a34yycthgbamx2t3@ltop.local/
> 
> So I think the difference here from the previous approach is that we
> explicitly mark functions that cannot take tagged addresses (like
> find_vma()) and identify the callers.

Indeed.


> 
> More comments below:
> 
> On Wed, Jun 19, 2019 at 01:16:20PM +0100, Andrew Murray wrote:
> > The proposed introduction of a relaxed ARM64 ABI [1] will allow tagged memory
> > addresses to be passed through the user-kernel syscall ABI boundary. Tagged
> > memory addresses are those which contain a non-zero top byte (the hardware
> > has always ignored this top byte due to TCR_EL1.TBI0) and may be useful
> > for features such as HWASan.
> > 
> > To permit this relaxation a proposed patchset [2] strips the top byte (tag)
> > from user provided memory addresses prior to use in kernel functions which
> > require untagged addresses (for example comparasion/arithmetic of addresses).
> > The author of this patchset relied on a variety of techniques [2] (such as
> > grep, BUG_ON, sparse etc) to identify as many instances of possible where
> > tags need to be stipped.
> > 
> > To support this effort and to catch future regressions (e.g. in new syscalls
> > or ioctls), I've devised an additional approach for detecting the use of
> > tagged addresses in functions that do not want them. This approach makes
> > use of Smatch [3] and is outlined in this RFC. Due to the ability of Smatch
> > to do flow analysis I believe we can annotate the kernel in fewer places
> > than a similar approach in sparse.
> > 
> > I'm keen for feedback on the likely usefulness of this approach.
> > 
> > We first add some new annotations that are exclusively consumed by Smatch:
> > 
> > --- a/include/linux/compiler_types.h
> > +++ b/include/linux/compiler_types.h
> > @@ -19,6 +19,7 @@
> >  # define __cond_lock(x,c)      ((c) ? ({ __acquire(x); 1; }) : 0)
> >  # define __percpu      __attribute__((noderef, address_space(3)))
> >  # define __rcu         __attribute__((noderef, address_space(4)))
> > +# define __untagged    __attribute__((address_space(5)))
> >  # define __private     __attribute__((noderef))
> >  extern void __chk_user_ptr(const volatile void __user *);
> >  extern void __chk_io_ptr(const volatile void __iomem *);
> [...]
> > --- a/mm/mmap.c
> > +++ b/mm/mmap.c
> > @@ -2224,7 +2224,7 @@ get_unmapped_area(struct file *file, unsigned long addr, unsigned long len,
> >  EXPORT_SYMBOL(get_unmapped_area);
> >  
> >  /* Look up the first VMA which satisfies  addr < vm_end,  NULL if none. */
> > -struct vm_area_struct *find_vma(struct mm_struct *mm, unsigned long addr)
> > +struct vm_area_struct *find_vma(struct mm_struct *mm, unsigned long __untagged addr)
> >  {
> >         struct rb_node *rb_node;
> >         struct vm_area_struct *vma;
> [...]
> > This can be further improved - the problem here is that for a given function,
> > e.g. find_vma we look for callers where *any* of the parameters
> > passed to find_vma are tagged addresses from userspace - i.e. not *just*
> > the annotated parameter. This is also true for find_vma's callers' callers'.
> > This results in the call tree having false positives.
> > 
> > It *is* possible to track parameters (e.g. find_vma arg 1 comes from arg 3 of
> > do_pages_stat_array etc), but this is limited as if functions modify the
> > data then the tracking is stopped (however this can be fixed).
> [...]
> > An example of a false positve is do_mlock. We untag the address and pass that
> > to apply_vma_lock_flags - however we also pass a length - because the length
> > came from userspace and could have the top bits set - it's flagged. However
> > with improved parameter tracking we can remove this false positive and similar.
> 
> Could we track only the conversions from __user * that eventually end up
> as __untagged? (I'm not familiar with smatch, so not sure what it can
> do).

I assume you mean 'that eventually end up as an argument annotated __untagged'?

The warnings smatch currently produce relate to only the conversions you
mention - however further work is needed in smatch to improve the scripts that
retrospectively provide call traces (without false positives).


> We could assume that an unsigned long argument to a syscall is
> default __untagged, unless explicitly marked as __tagged. For example,
> sys_munmap() is allowed to take a tagged address.

I'll give this some further thought.


> 
> > Prior to smatch I attempted a similar approach with sparse - however it seemed
> > necessary to propogate the __untagged annotation in every function up the call tree,
> > and resulted in adding the __untagged annotation to functions that would never
> > get near user provided data. This leads to a littering of __untagged all over the
> > kernel which doesn't seem appealing.
> 
> Indeed. We attempted this last year (see the above thread).
> 
> > Smatch is more capable, however it almost
> > certainly won't pick up 100% of issues due to the difficulity of making flow
> > analysis understand everything a compiler can.
> > 
> > Is it likely to be acceptable to use the __untagged annotation in user-path
> > functions that require untagged addresses across the kernel?
> 
> If it helps with identifying missing untagged_addr() calls, I would say
> yes (as long as we keep them to a minimum).

Thanks for the feedback.

Andrew Murray

> 
> > [1] https://lkml.org/lkml/2019/6/13/534
> > [2] https://patchwork.kernel.org/cover/10989517/
> > [3] http://smatch.sourceforge.net/
> 
> -- 
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
