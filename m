Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B253B7E8E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 17:51:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FWAO/M5JXk6z/o0MaL17/V82HA/xdGO9A5eE4o/ZJcc=; b=TD2D5pSi8E02oZ
	C/cBCmHKxmwZ1iCjXUBwfwOCAQ7VCySvE6D7AwVQLA/a7qDV0lsUTJht1chpZjFQt+iG7o/VNzWgN
	0P/paKQGF2UeCFTI3GF/nXcvIhFI2LcHTWi8dzgtcQmkPPJLOvB31MW9oBNQvIVdAjGDLm2lDw32D
	X/rDz36c6GWGcSSij3Ln7mJLGRrOtFpQuZWi+6LknXj4+Oq4T+IQYQkRA5vhMDhPA9w15mt6LQcuA
	9Z/OapReLlUe9+mP42LhoTavFV1Aa6mkIrax7dCBieqo1YxoYqkxxTTXsWEKAOv/JhIJFEkdtgbYt
	5z9IeDgtWLdIiSqiRnVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAyii-0006Xe-Fg; Thu, 19 Sep 2019 15:51:48 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAyiS-0006Wx-SM
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 15:51:34 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 08:51:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="178091248"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga007.jf.intel.com with ESMTP; 19 Sep 2019 08:51:25 -0700
Received: by black.fi.intel.com (Postfix, from userid 1000)
 id 61703BD; Thu, 19 Sep 2019 18:51:24 +0300 (EEST)
Date: Thu, 19 Sep 2019 18:51:24 +0300
From: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v4 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Message-ID: <20190919155124.56ps5vsd5al6g7hm@black.fi.intel.com>
References: <20190918131914.38081-1-justin.he@arm.com>
 <20190918131914.38081-4-justin.he@arm.com>
 <20190918140027.ckj32xnryyyesc23@box>
 <20190918180029.GB20601@iMac.local>
 <20190919150007.k7scjplcya53j7r4@box>
 <20190919154143.GA6472@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919154143.GA6472@arrakis.emea.arm.com>
User-Agent: NeoMutt/20170714-126-deb55f (1.8.3)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_085132_928501_7DDA92B4 
X-CRM114-Status: GOOD (  28.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 "Kirill A. Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 19, 2019 at 03:41:43PM +0000, Catalin Marinas wrote:
> On Thu, Sep 19, 2019 at 06:00:07PM +0300, Kirill A. Shutemov wrote:
> > On Wed, Sep 18, 2019 at 07:00:30PM +0100, Catalin Marinas wrote:
> > > On Wed, Sep 18, 2019 at 05:00:27PM +0300, Kirill A. Shutemov wrote:
> > > > On Wed, Sep 18, 2019 at 09:19:14PM +0800, Jia He wrote:
> > > > > @@ -2152,20 +2163,34 @@ static inline void cow_user_page(struct page *dst, struct page *src, unsigned lo
> > > > >  	 */
> > > > >  	if (unlikely(!src)) {
> > > > >  		void *kaddr = kmap_atomic(dst);
> > > > > -		void __user *uaddr = (void __user *)(va & PAGE_MASK);
> > > > > +		void __user *uaddr = (void __user *)(addr & PAGE_MASK);
> > > > > +		pte_t entry;
> > > > >  
> > > > >  		/*
> > > > >  		 * This really shouldn't fail, because the page is there
> > > > >  		 * in the page tables. But it might just be unreadable,
> > > > >  		 * in which case we just give up and fill the result with
> > > > > -		 * zeroes.
> > > > > +		 * zeroes. On architectures with software "accessed" bits,
> > > > > +		 * we would take a double page fault here, so mark it
> > > > > +		 * accessed here.
> > > > >  		 */
> > > > > +		if (arch_faults_on_old_pte() && !pte_young(vmf->orig_pte)) {
> > > > > +			spin_lock(vmf->ptl);
> > > > > +			if (likely(pte_same(*vmf->pte, vmf->orig_pte))) {
> > > > > +				entry = pte_mkyoung(vmf->orig_pte);
> > > > > +				if (ptep_set_access_flags(vma, addr,
> > > > > +							  vmf->pte, entry, 0))
> > > > > +					update_mmu_cache(vma, addr, vmf->pte);
> > > > > +			}
> > > > 
> > > > I don't follow.
> > > > 
> > > > So if pte has changed under you, you don't set the accessed bit, but never
> > > > the less copy from the user.
> > > > 
> > > > What makes you think it will not trigger the same problem?
> > > > 
> > > > I think we need to make cow_user_page() fail in this case and caller --
> > > > wp_page_copy() -- return zero. If the fault was solved by other thread, we
> > > > are fine. If not userspace would re-fault on the same address and we will
> > > > handle the fault from the second attempt.
> > > 
> > > It would be nice to clarify the semantics of this function and do as
> > > you suggest but the current comment is slightly confusing:
> > > 
> > > 	/*
> > > 	 * If the source page was a PFN mapping, we don't have
> > > 	 * a "struct page" for it. We do a best-effort copy by
> > > 	 * just copying from the original user address. If that
> > > 	 * fails, we just zero-fill it. Live with it.
> > > 	 */
> > > 
> > > Would any user-space rely on getting a zero-filled page here instead of
> > > a recursive fault?
> > 
> > I don't see the point in zero-filled page in this case. SIGBUS sounds like
> > more appropriate response, no?
> 
> I think misunderstood your comment. So, if !pte_same(), we should let
> userspace re-fault. This wouldn't be a user ABI change and it is
> bounded, can't end up in an infinite re-fault loop.

Right. !pte_same() can only happen if we raced with somebody else.
I cannot imagine situation when the race will happen more than few times
in a row.

> In case of a __copy_from_user_inatomic() error, SIGBUS would make more
> sense but it changes the current behaviour (zero-filling the page). This
> can be left for a separate patch, doesn't affect the arm64 case here.

I think it's safer to leave it as is. Maybe put WARN_ON_ONCE() or
something. There can be some obscure use-case that I don't see.

-- 
 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
