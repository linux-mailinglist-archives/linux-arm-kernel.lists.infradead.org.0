Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C487B6A29
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 20:00:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NBI8HEZSP1imbkVpOxkPRMELMBUZTlI9KHqsVfSzgkY=; b=S0bwUx3wL+X1Ah
	NKx+lxJa71UAhCgbzGulJW3kjrTiM1LqGiloR3Kluo9n32/0BFbmo9KTrepUv9I8bDrdtnspDKIpO
	xrwNgZm2yaEaNgADqEWe9BrLzFNOh7GIk9H5edvyXrZ8+vPxO9tsE/rs2o6JLP4LQK2jADirHQ8Xp
	6ADfM9vKgXAwn9gidZUR7M7XJerZlah1xA0asWO/E99PEQMwZ2xNAHsOo98Wf4JYSfe/wCHdgnpyz
	6fe85jA6MUyZaU8JnzsPuQQJ5yxV/VbiHLWpW8ZGq7Wwkvuk0J4gy8DuPsoM16/Lsmx1ho8LNXbKY
	v1WLp1WRs1ImDdZ5YINA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAeG5-0003do-Cq; Wed, 18 Sep 2019 18:00:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAeFs-0003d4-EW
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 18:00:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 547971000;
 Wed, 18 Sep 2019 11:00:39 -0700 (PDT)
Received: from iMac.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 58E363F59C;
 Wed, 18 Sep 2019 11:00:36 -0700 (PDT)
Date: Wed, 18 Sep 2019 19:00:30 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: "Kirill A. Shutemov" <kirill@shutemov.name>
Subject: Re: [PATCH v4 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Message-ID: <20190918180029.GB20601@iMac.local>
References: <20190918131914.38081-1-justin.he@arm.com>
 <20190918131914.38081-4-justin.he@arm.com>
 <20190918140027.ckj32xnryyyesc23@box>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918140027.ckj32xnryyyesc23@box>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_110040_683105_F58B4963 
X-CRM114-Status: GOOD (  19.34  )
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

On Wed, Sep 18, 2019 at 05:00:27PM +0300, Kirill A. Shutemov wrote:
> On Wed, Sep 18, 2019 at 09:19:14PM +0800, Jia He wrote:
> > @@ -2152,20 +2163,34 @@ static inline void cow_user_page(struct page *dst, struct page *src, unsigned lo
> >  	 */
> >  	if (unlikely(!src)) {
> >  		void *kaddr = kmap_atomic(dst);
> > -		void __user *uaddr = (void __user *)(va & PAGE_MASK);
> > +		void __user *uaddr = (void __user *)(addr & PAGE_MASK);
> > +		pte_t entry;
> >  
> >  		/*
> >  		 * This really shouldn't fail, because the page is there
> >  		 * in the page tables. But it might just be unreadable,
> >  		 * in which case we just give up and fill the result with
> > -		 * zeroes.
> > +		 * zeroes. On architectures with software "accessed" bits,
> > +		 * we would take a double page fault here, so mark it
> > +		 * accessed here.
> >  		 */
> > +		if (arch_faults_on_old_pte() && !pte_young(vmf->orig_pte)) {
> > +			spin_lock(vmf->ptl);
> > +			if (likely(pte_same(*vmf->pte, vmf->orig_pte))) {
> > +				entry = pte_mkyoung(vmf->orig_pte);
> > +				if (ptep_set_access_flags(vma, addr,
> > +							  vmf->pte, entry, 0))
> > +					update_mmu_cache(vma, addr, vmf->pte);
> > +			}
> 
> I don't follow.
> 
> So if pte has changed under you, you don't set the accessed bit, but never
> the less copy from the user.
> 
> What makes you think it will not trigger the same problem?
> 
> I think we need to make cow_user_page() fail in this case and caller --
> wp_page_copy() -- return zero. If the fault was solved by other thread, we
> are fine. If not userspace would re-fault on the same address and we will
> handle the fault from the second attempt.

It would be nice to clarify the semantics of this function and do as
you suggest but the current comment is slightly confusing:

	/*
	 * If the source page was a PFN mapping, we don't have
	 * a "struct page" for it. We do a best-effort copy by
	 * just copying from the original user address. If that
	 * fails, we just zero-fill it. Live with it.
	 */

Would any user-space rely on getting a zero-filled page here instead of
a recursive fault?

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
