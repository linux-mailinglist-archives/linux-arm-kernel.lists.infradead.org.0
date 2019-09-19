Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADA7B7E6C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 17:42:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5mjzV/bDCSaNp3e8KCzU9ySYIrFUmHQ4OaX/Mbpk2aE=; b=pXvQtnU4BwK2PB
	OoiG4wbtKPF9P/205nE7WdN7nuMawE1V+UfFGuOugAaVESjX+OdoYauCPW0lkVfLKMWhe6X2zWJLX
	kwe8sSwQ1e/Y6NUsNer/61tMpWX6hK8t/72fzSCsB5fQmWYa96nEEG5LZ2DtvwDJxr5B303njkH1d
	fmskhwEcporiwvvvAwtzjtjDGz+72DdIaPmeSB8XUfhzUjesJZryIg2jW1dmmVII7DgFUR+86j/6P
	CR3cAuyy8inMpZiXYHBH96kr1IrLOfznaYks0YVctDSGU98G3mIkwE8v/tQv3shnaYRl1CRvZb/tS
	prEAxClcq6W9ZWbXGOmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAyZJ-0002sE-Jm; Thu, 19 Sep 2019 15:42:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAyZ3-0002rU-MT
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 15:41:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B199628;
 Thu, 19 Sep 2019 08:41:48 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 E65BC3F575; Thu, 19 Sep 2019 08:41:45 -0700 (PDT)
Date: Thu, 19 Sep 2019 16:41:43 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: "Kirill A. Shutemov" <kirill@shutemov.name>
Subject: Re: [PATCH v4 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Message-ID: <20190919154143.GA6472@arrakis.emea.arm.com>
References: <20190918131914.38081-1-justin.he@arm.com>
 <20190918131914.38081-4-justin.he@arm.com>
 <20190918140027.ckj32xnryyyesc23@box>
 <20190918180029.GB20601@iMac.local>
 <20190919150007.k7scjplcya53j7r4@box>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919150007.k7scjplcya53j7r4@box>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_084149_819612_D00C713D 
X-CRM114-Status: GOOD (  25.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-mm@kvack.org,
 Punit Agrawal <punitagrawal@gmail.com>, Will Deacon <will@kernel.org>,
 Alex Van Brunt <avanbrunt@nvidia.com>, Jia He <justin.he@arm.com>,
 Marc Zyngier <maz@kernel.org>, Anshuman Khandual <anshuman.khandual@arm.com>,
 Matthew Wilcox <willy@infradead.org>, Jun Yao <yaojun8558363@gmail.com>,
 Kaly Xin <Kaly.Xin@arm.com>, hejianet@gmail.com,
 Ralph Campbell <rcampbell@nvidia.com>, Suzuki Poulose <Suzuki.Poulose@arm.com>,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 19, 2019 at 06:00:07PM +0300, Kirill A. Shutemov wrote:
> On Wed, Sep 18, 2019 at 07:00:30PM +0100, Catalin Marinas wrote:
> > On Wed, Sep 18, 2019 at 05:00:27PM +0300, Kirill A. Shutemov wrote:
> > > On Wed, Sep 18, 2019 at 09:19:14PM +0800, Jia He wrote:
> > > > @@ -2152,20 +2163,34 @@ static inline void cow_user_page(struct page *dst, struct page *src, unsigned lo
> > > >  	 */
> > > >  	if (unlikely(!src)) {
> > > >  		void *kaddr = kmap_atomic(dst);
> > > > -		void __user *uaddr = (void __user *)(va & PAGE_MASK);
> > > > +		void __user *uaddr = (void __user *)(addr & PAGE_MASK);
> > > > +		pte_t entry;
> > > >  
> > > >  		/*
> > > >  		 * This really shouldn't fail, because the page is there
> > > >  		 * in the page tables. But it might just be unreadable,
> > > >  		 * in which case we just give up and fill the result with
> > > > -		 * zeroes.
> > > > +		 * zeroes. On architectures with software "accessed" bits,
> > > > +		 * we would take a double page fault here, so mark it
> > > > +		 * accessed here.
> > > >  		 */
> > > > +		if (arch_faults_on_old_pte() && !pte_young(vmf->orig_pte)) {
> > > > +			spin_lock(vmf->ptl);
> > > > +			if (likely(pte_same(*vmf->pte, vmf->orig_pte))) {
> > > > +				entry = pte_mkyoung(vmf->orig_pte);
> > > > +				if (ptep_set_access_flags(vma, addr,
> > > > +							  vmf->pte, entry, 0))
> > > > +					update_mmu_cache(vma, addr, vmf->pte);
> > > > +			}
> > > 
> > > I don't follow.
> > > 
> > > So if pte has changed under you, you don't set the accessed bit, but never
> > > the less copy from the user.
> > > 
> > > What makes you think it will not trigger the same problem?
> > > 
> > > I think we need to make cow_user_page() fail in this case and caller --
> > > wp_page_copy() -- return zero. If the fault was solved by other thread, we
> > > are fine. If not userspace would re-fault on the same address and we will
> > > handle the fault from the second attempt.
> > 
> > It would be nice to clarify the semantics of this function and do as
> > you suggest but the current comment is slightly confusing:
> > 
> > 	/*
> > 	 * If the source page was a PFN mapping, we don't have
> > 	 * a "struct page" for it. We do a best-effort copy by
> > 	 * just copying from the original user address. If that
> > 	 * fails, we just zero-fill it. Live with it.
> > 	 */
> > 
> > Would any user-space rely on getting a zero-filled page here instead of
> > a recursive fault?
> 
> I don't see the point in zero-filled page in this case. SIGBUS sounds like
> more appropriate response, no?

I think misunderstood your comment. So, if !pte_same(), we should let
userspace re-fault. This wouldn't be a user ABI change and it is
bounded, can't end up in an infinite re-fault loop.

In case of a __copy_from_user_inatomic() error, SIGBUS would make more
sense but it changes the current behaviour (zero-filling the page). This
can be left for a separate patch, doesn't affect the arm64 case here.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
