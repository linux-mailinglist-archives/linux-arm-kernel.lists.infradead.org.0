Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A96BBA23
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 19:05:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aaLy9Z/8yrO+2WS1UBQ25StCtbZAQNkDtFvsO6+lGeQ=; b=Z1gWOypu8B0DSw
	KTggtPtUYVSIHJvheanw+HP7o7HVORNdxkr+TbOr9Q4Ah115XcNZ/YDH0kmeJem1tX24+sFTk5f/y
	25stlWwMv7fV/K1FKSnzfsKCJtkLuTmxIyesipcmthSFYcQErhoPeHtg2UH/VmKpj0yOsqVFS/4aE
	Mbj587O28ste/KjScPEr6YDTA3WyzWs1ev97RedZ0I8/BGh16fv1xTuAPagwXQ401Q5C1gx30z94c
	n/UKwWx8wgZgwoob4OFa4YGT0BJgT5MrJKZfIqG5netH8BptzKpVGtbZZ5kNmzz8ESu+dlRzxXR+t
	wlZM82Y47E79ayA3IUKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCRlk-00062z-Iu; Mon, 23 Sep 2019 17:05:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCRlQ-0005px-Bp
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 17:04:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2EBAE1000;
 Mon, 23 Sep 2019 10:04:39 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 7E0523F67D; Mon, 23 Sep 2019 10:04:36 -0700 (PDT)
Date: Mon, 23 Sep 2019 18:04:34 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Jia He <justin.he@arm.com>
Subject: Re: [PATCH v8 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Message-ID: <20190923170433.GE10192@arrakis.emea.arm.com>
References: <20190921135054.142360-1-justin.he@arm.com>
 <20190921135054.142360-4-justin.he@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190921135054.142360-4-justin.he@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_100440_684422_AE05A1FD 
X-CRM114-Status: GOOD (  19.98  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kaly Xin <Kaly.Xin@arm.com>,
 Ralph Campbell <rcampbell@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-mm@kvack.org,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Punit Agrawal <punitagrawal@gmail.com>, hejianet@gmail.com,
 Thomas Gleixner <tglx@linutronix.de>, nd@arm.com,
 Will Deacon <will@kernel.org>, Alex Van Brunt <avanbrunt@nvidia.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 21, 2019 at 09:50:54PM +0800, Jia He wrote:
> @@ -2151,21 +2163,53 @@ static inline void cow_user_page(struct page *dst, struct page *src, unsigned lo
>  	 * fails, we just zero-fill it. Live with it.
>  	 */
>  	if (unlikely(!src)) {
> -		void *kaddr = kmap_atomic(dst);
> -		void __user *uaddr = (void __user *)(va & PAGE_MASK);
> +		void *kaddr;
> +		pte_t entry;
> +		void __user *uaddr = (void __user *)(addr & PAGE_MASK);
>  
> +		/* On architectures with software "accessed" bits, we would
> +		 * take a double page fault, so mark it accessed here.
> +		 */

Nitpick: please follow the kernel coding style for multi-line comments
(above and the for the rest of the patch):

		/*
		 * Your multi-line comment.
		 */

> +		if (arch_faults_on_old_pte() && !pte_young(vmf->orig_pte)) {
> +			vmf->pte = pte_offset_map_lock(mm, vmf->pmd, addr,
> +						       &vmf->ptl);
> +			if (likely(pte_same(*vmf->pte, vmf->orig_pte))) {
> +				entry = pte_mkyoung(vmf->orig_pte);
> +				if (ptep_set_access_flags(vma, addr,
> +							  vmf->pte, entry, 0))
> +					update_mmu_cache(vma, addr, vmf->pte);
> +			} else {
> +				/* Other thread has already handled the fault
> +				 * and we don't need to do anything. If it's
> +				 * not the case, the fault will be triggered
> +				 * again on the same address.
> +				 */
> +				pte_unmap_unlock(vmf->pte, vmf->ptl);
> +				return false;
> +			}
> +			pte_unmap_unlock(vmf->pte, vmf->ptl);
> +		}

Another nit, you could rewrite this block slightly to avoid too much
indentation. Something like (untested):

		if (arch_faults_on_old_pte() && !pte_young(vmf->orig_pte)) {
			vmf->pte = pte_offset_map_lock(mm, vmf->pmd, addr,
						       &vmf->ptl);
			if (unlikely(!pte_same(*vmf->pte, vmf->orig_pte))) {
				/*
				 * Other thread has already handled the fault
				 * and we don't need to do anything. If it's
				 * not the case, the fault will be triggered
				 * again on the same address.
				 */
				pte_unmap_unlock(vmf->pte, vmf->ptl);
				return false;
			}
			entry = pte_mkyoung(vmf->orig_pte);
			if (ptep_set_access_flags(vma, addr,
						  vmf->pte, entry, 0))
				update_mmu_cache(vma, addr, vmf->pte);
			pte_unmap_unlock(vmf->pte, vmf->ptl);
		}

> +
> +		kaddr = kmap_atomic(dst);

Since you moved the kmap_atomic() here, could the above
arch_faults_on_old_pte() run in a preemptible context? I suggested to
add a WARN_ON in patch 2 to be sure.

>  		/*
>  		 * This really shouldn't fail, because the page is there
>  		 * in the page tables. But it might just be unreadable,
>  		 * in which case we just give up and fill the result with
>  		 * zeroes.
>  		 */
> -		if (__copy_from_user_inatomic(kaddr, uaddr, PAGE_SIZE))
> +		if (__copy_from_user_inatomic(kaddr, uaddr, PAGE_SIZE)) {
> +			/* Give a warn in case there can be some obscure
> +			 * use-case
> +			 */
> +			WARN_ON_ONCE(1);

That's more of a question for the mm guys: at this point we do the
copying with the ptl released; is there anything else that could have
made the pte old in the meantime? I think unuse_pte() is only called on
anonymous vmas, so it shouldn't be the case here.

>  			clear_page(kaddr);
> +		}
>  		kunmap_atomic(kaddr);
>  		flush_dcache_page(dst);
>  	} else
> -		copy_user_highpage(dst, src, va, vma);
> +		copy_user_highpage(dst, src, addr, vma);
> +
> +	return true;
>  }

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
