Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1803DB9482
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 17:53:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e+38g/m/7RVTScoCP75Qlo4eY8goUaWwjj4LfhHzBw4=; b=tIOPXSpViEhym6
	Az7Y24AvrSJMt287WQguPbOBChF5wwxVFolFI+P1TmmWwTeLJ5ePh4plIV2YccFPBfoOH2G0/bZRV
	71JMR0TbLoWhhczEpYlXMxmHGKWGC89sa+Cc96TQxSVca0SzFuBLn4vWqlTpWKwCrgH1slTh4yqvW
	9+2PS2/Dou8PUWVCtJN9rdDd8ObJXBCrdDym/KxofpOHLboq8+Li5uHJtxTPRBwkT2/ufayeBGp3Y
	sNzcxUDkTZnPVHF6sOpvbD8kW/4t/D7uPdzGa6J38BLVg9dr/21c7+/ZWnRI8RwmJgKevoM2palNS
	U0jrO5fWCdx7KzIxvDVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBLDW-0003va-Ma; Fri, 20 Sep 2019 15:53:06 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iBLDQ-0003vK-Bt; Fri, 20 Sep 2019 15:53:00 +0000
Date: Fri, 20 Sep 2019 08:53:00 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Jia He <justin.he@arm.com>
Subject: Re: [PATCH v7 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Message-ID: <20190920155300.GC15392@bombadil.infradead.org>
References: <20190920135437.25622-1-justin.he@arm.com>
 <20190920135437.25622-4-justin.he@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920135437.25622-4-justin.he@arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
 Suzuki Poulose <Suzuki.Poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Punit Agrawal <punitagrawal@gmail.com>, Marc Zyngier <maz@kernel.org>,
 hejianet@gmail.com, Thomas Gleixner <tglx@linutronix.de>, nd@arm.com,
 Will Deacon <will@kernel.org>, Alex Van Brunt <avanbrunt@nvidia.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 09:54:37PM +0800, Jia He wrote:
> -static inline void cow_user_page(struct page *dst, struct page *src, unsigned long va, struct vm_area_struct *vma)
> +static inline int cow_user_page(struct page *dst, struct page *src,
> +				struct vm_fault *vmf)
>  {

Can we talk about the return type here?

> +			} else {
> +				/* Other thread has already handled the fault
> +				 * and we don't need to do anything. If it's
> +				 * not the case, the fault will be triggered
> +				 * again on the same address.
> +				 */
> +				pte_unmap_unlock(vmf->pte, vmf->ptl);
> +				return -1;
...
> +	return 0;
>  }

So -1 for "try again" and 0 for "succeeded".

> +		if (cow_user_page(new_page, old_page, vmf)) {

Then we use it like a bool.  But it's kind of backwards from a bool because
false is success.

> +			/* COW failed, if the fault was solved by other,
> +			 * it's fine. If not, userspace would re-fault on
> +			 * the same address and we will handle the fault
> +			 * from the second attempt.
> +			 */
> +			put_page(new_page);
> +			if (old_page)
> +				put_page(old_page);
> +			return 0;

And we don't use the return value; in fact we invert it.

Would this make more sense:

static inline bool cow_user_page(struct page *dst, struct page *src,
					struct vm_fault *vmf)
...
				pte_unmap_unlock(vmf->pte, vmf->ptl);
				return false;
...
	return true;
...
		if (!cow_user_page(new_page, old_page, vmf)) {

That reads more sensibly for me.  We could also go with returning a
vm_fault_t, but that would be more complex than needed today, I think.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
