Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34291BC5B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 12:33:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QLKvopYHS1rF2QIKLnRyJpmk0ErZewV53S+WuMLtxPI=; b=L1QKrVlyakAM2M
	s2Uacj2I23ZZbNoXMTuQ4wiFX319PlnEXLUx2QK/g/LFVevtPdbe4zutWiPRya7bTh6o6eyFQEF/7
	K/G7Y0nJjCcrQByLjEuDxcna9IiPmT/30nxMJrxUkdyfECwGrcJ8fjY44RtConYlblJIxAPAu5H7f
	3OKnfDmJ0wfn8FVSX7QR/XjzEEgt2BPH9e3m1D5+iMqqNG+TpHx/DP2VDWP1TXmPaOzBzH0EyTZjw
	9y87V5PosbEuI7nTUirVP4u7hth9x8CAZy2eFxmkMDB9bizmPBR+WcefdL4uO/SRJivieE9qKG6ps
	QwsiUiPgpGdEzHKYJKBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCi8j-0002cu-JJ; Tue, 24 Sep 2019 10:33:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCi8S-0002c8-Te
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 10:33:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2B94C142F;
 Tue, 24 Sep 2019 03:33:30 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 77BFE3F67D; Tue, 24 Sep 2019 03:33:27 -0700 (PDT)
Date: Tue, 24 Sep 2019 11:33:25 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: "Justin He (Arm Technology China)" <Justin.He@arm.com>
Subject: Re: [PATCH v8 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Message-ID: <20190924103324.GB41214@arrakis.emea.arm.com>
References: <20190921135054.142360-1-justin.he@arm.com>
 <20190921135054.142360-4-justin.he@arm.com>
 <20190923170433.GE10192@arrakis.emea.arm.com>
 <DB7PR08MB3082BC38536AE16B056AEA05F7840@DB7PR08MB3082.eurprd08.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR08MB3082BC38536AE16B056AEA05F7840@DB7PR08MB3082.eurprd08.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_033333_041580_7AB05018 
X-CRM114-Status: GOOD (  25.02  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 Ralph Campbell <rcampbell@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Anshuman Khandual <Anshuman.Khandual@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 James Morse <James.Morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Punit Agrawal <punitagrawal@gmail.com>,
 "hejianet@gmail.com" <hejianet@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, nd <nd@arm.com>,
 Will Deacon <will@kernel.org>, Alex Van Brunt <avanbrunt@nvidia.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Robin Murphy <Robin.Murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 06:43:06AM +0000, Justin He (Arm Technology China) wrote:
> Catalin Marinas wrote:
> > On Sat, Sep 21, 2019 at 09:50:54PM +0800, Jia He wrote:
> > > @@ -2151,21 +2163,53 @@ static inline void cow_user_page(struct page *dst, struct page *src, unsigned lo
> > >  	 * fails, we just zero-fill it. Live with it.
> > >  	 */
> > >  	if (unlikely(!src)) {
> > > -		void *kaddr = kmap_atomic(dst);
> > > -		void __user *uaddr = (void __user *)(va & PAGE_MASK);
> > > +		void *kaddr;
> > > +		pte_t entry;
> > > +		void __user *uaddr = (void __user *)(addr & PAGE_MASK);
> > >
> > > +		/* On architectures with software "accessed" bits, we would
> > > +		 * take a double page fault, so mark it accessed here.
> > > +		 */
[...]
> > > +		if (arch_faults_on_old_pte() && !pte_young(vmf->orig_pte)) {
> > > +			vmf->pte = pte_offset_map_lock(mm, vmf->pmd, addr,
> > > +						       &vmf->ptl);
> > > +			if (likely(pte_same(*vmf->pte, vmf->orig_pte))) {
> > > +				entry = pte_mkyoung(vmf->orig_pte);
> > > +				if (ptep_set_access_flags(vma, addr,
> > > +							  vmf->pte, entry, 0))
> > > +					update_mmu_cache(vma, addr, vmf->pte);
> > > +			} else {
> > > +				/* Other thread has already handled the fault
> > > +				 * and we don't need to do anything. If it's
> > > +				 * not the case, the fault will be triggered
> > > +				 * again on the same address.
> > > +				 */
> > > +				pte_unmap_unlock(vmf->pte, vmf->ptl);
> > > +				return false;
> > > +			}
> > > +			pte_unmap_unlock(vmf->pte, vmf->ptl);
> > > +		}
[...]
> > > +
> > > +		kaddr = kmap_atomic(dst);
> > 
> > Since you moved the kmap_atomic() here, could the above
> > arch_faults_on_old_pte() run in a preemptible context? I suggested to
> > add a WARN_ON in patch 2 to be sure.
> 
> Should I move kmap_atomic back to the original line? Thus, we can make sure
> that arch_faults_on_old_pte() is in the context of preempt_disabled?
> Otherwise, arch_faults_on_old_pte() may cause plenty of warning if I add
> a WARN_ON in arch_faults_on_old_pte.  I tested it when I enable the PREEMPT=y
> on a ThunderX2 qemu guest.

So we have two options here:

1. Change arch_faults_on_old_pte() scope to the whole system rather than
   just the current CPU. You'd have to wire up a new arm64 capability
   for the access flag but this way we don't care whether it's
   preemptible or not.

2. Keep the arch_faults_on_old_pte() per-CPU but make sure we are not
   preempted here. The kmap_atomic() move would do but you'd have to
   kunmap_atomic() before the return.

I think the answer to my question below also has some implication on
which option to pick:

> > >  		/*
> > >  		 * This really shouldn't fail, because the page is there
> > >  		 * in the page tables. But it might just be unreadable,
> > >  		 * in which case we just give up and fill the result with
> > >  		 * zeroes.
> > >  		 */
> > > -		if (__copy_from_user_inatomic(kaddr, uaddr, PAGE_SIZE))
> > > +		if (__copy_from_user_inatomic(kaddr, uaddr, PAGE_SIZE)) {
> > > +			/* Give a warn in case there can be some obscure
> > > +			 * use-case
> > > +			 */
> > > +			WARN_ON_ONCE(1);
> > 
> > That's more of a question for the mm guys: at this point we do the
> > copying with the ptl released; is there anything else that could have
> > made the pte old in the meantime? I think unuse_pte() is only called on
> > anonymous vmas, so it shouldn't be the case here.

If we need to hold the ptl here, you could as well have an enclosing
kmap/kunmap_atomic (option 2) with some goto instead of "return false".

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
