Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D60B8D62
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 11:04:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ie7vvbuwgeVtyTkewZZ2EVOMv5dCVBvNhR+/jVxOQmQ=; b=NiRBOkvDoz3EVk
	xm7QitFieDbSPvdTlavk/cVvxhV02FiNsk6Jzcor4DRRyDYXexRGlLm/spBkzwhLCag3/G6hc/mB0
	V9pRUhNGCuQ+YVRk2vlY8DkeAE/NCvv5qRAK93RECuBkA2Im9VBhehhBaJSp3NXY+klEIf4LXj2Rj
	OBv60ANx8/LLEmW45oEG77lNnfyb4w6XfxSR84Fz9mFBB/oG4S4ziz+8tl0bE+QNOhHXqPaLOs0OH
	p5yIXU4ZjlKRvmHJGWxILHA8jLSyObWTLgKviJ8ggUWZQWwxDMF1diA/44FW2uO9obe0JBiy6BruN
	EJasH7e6TFWs8M/rKHOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBEpb-0001Xv-8p; Fri, 20 Sep 2019 09:03:59 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBEpM-0001Wx-Bi
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 09:03:46 +0000
Received: by mail-ed1-x541.google.com with SMTP id r9so5643847edl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 02:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7f7iIewityqCPGZx7dQm7jfBt0RvFj0GrtCbkpP6ccU=;
 b=w5w0Jz+jH7Pg37OdeijB29i5yxb9yKmdsDbkLFFQjznoGPwxm3fzMCgxsaIrfLCzzc
 OJnMMYN8y9lFwzlL1QUOoXOUiGTbq7EDPjgNs9UzQwaVMCpEnMCFO23sSonOWti0utit
 a/l4E+vlM5oP6rLPtk4qybkOL3h2nhd5AGyLli/SlFfI/h2fXpXvlE5GyE9WNrASaAR4
 Lh5BUwHfYLvfvjcgG9rSLWsvwbeYQoVOrfjl4DR+qRNG93dEZ1cVSZhoi5fu5U14VUdl
 fg3To7OKWvBt4fkNatKsyo+x0G8U/BbQBt9/cbVJ9LYelUYqtvjThZeOrKNVh35P3fpb
 mXCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7f7iIewityqCPGZx7dQm7jfBt0RvFj0GrtCbkpP6ccU=;
 b=bU2Ayd1gpFNEqs9X/rc5tjRbjKNGB+sds5AKllNRuf9JqKvFHZQi/HugNNxt0dxd//
 GvRdJEywlO9uLOR3meUQBH4MIPSv55ZMkQhw+pRqB68Rw0ZH6q5RyUGeyg0d7jN1T7TA
 tMcNj6u/Iq10qfK/GpXCQv6I/4QdCWfigV1WOVgnDuaD8SzNZlUKinV0HEAV4fI55wMz
 ZrtPOZI+C5OSiz7YGh1vbSHayR2Ecumq1WtTPwThxFisqeE9YA2uuv+RV0PHXkckRMzm
 pwdoC242DIkVb0G/u9pJGcZw78dh/6xSWjBl8Ckv15TX+ZDn6FgK/9XFgMCSh3WWUA6Q
 iEmg==
X-Gm-Message-State: APjAAAU+R8ysoHUY74uMZb6eOsRJdfpZTtzogt8k52eL4v+efssF9Hue
 XPGHSyMvl0bb+BjXlchDMgNZ4A==
X-Google-Smtp-Source: APXvYqySJJLb2ToIjdZWEjdisjwCvQmt8kW2QvOzzR1Iyip5v/Cl1a++EDimj/ghAzYeSyWZlm2w9g==
X-Received: by 2002:a17:906:3110:: with SMTP id
 16mr11058571ejx.306.1568970221772; 
 Fri, 20 Sep 2019 02:03:41 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id v4sm214627edy.54.2019.09.20.02.03.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Sep 2019 02:03:40 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id D180310077B; Fri, 20 Sep 2019 12:03:40 +0300 (+03)
Date: Fri, 20 Sep 2019 12:03:40 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Jia He <justin.he@arm.com>
Subject: Re: [PATCH v6 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Message-ID: <20190920090340.6emsac4s6gdd75sj@box>
References: <20190920022132.149467-1-justin.he@arm.com>
 <20190920022132.149467-4-justin.he@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920022132.149467-4-justin.he@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_020344_466164_656266D4 
X-CRM114-Status: GOOD (  30.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-mm@kvack.org,
 Punit Agrawal <punitagrawal@gmail.com>, Will Deacon <will@kernel.org>,
 Alex Van Brunt <avanbrunt@nvidia.com>, Marc Zyngier <maz@kernel.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Matthew Wilcox <willy@infradead.org>, Jun Yao <yaojun8558363@gmail.com>,
 Kaly Xin <Kaly.Xin@arm.com>, hejianet@gmail.com,
 Ralph Campbell <rcampbell@nvidia.com>, Suzuki Poulose <Suzuki.Poulose@arm.com>,
 =?utf-8?B?SsOpcsO0bWU=?= Glisse <jglisse@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 10:21:32AM +0800, Jia He wrote:
> When we tested pmdk unit test [1] vmmalloc_fork TEST1 in arm64 guest, there
> will be a double page fault in __copy_from_user_inatomic of cow_user_page.
> 
> Below call trace is from arm64 do_page_fault for debugging purpose
> [  110.016195] Call trace:
> [  110.016826]  do_page_fault+0x5a4/0x690
> [  110.017812]  do_mem_abort+0x50/0xb0
> [  110.018726]  el1_da+0x20/0xc4
> [  110.019492]  __arch_copy_from_user+0x180/0x280
> [  110.020646]  do_wp_page+0xb0/0x860
> [  110.021517]  __handle_mm_fault+0x994/0x1338
> [  110.022606]  handle_mm_fault+0xe8/0x180
> [  110.023584]  do_page_fault+0x240/0x690
> [  110.024535]  do_mem_abort+0x50/0xb0
> [  110.025423]  el0_da+0x20/0x24
> 
> The pte info before __copy_from_user_inatomic is (PTE_AF is cleared):
> [ffff9b007000] pgd=000000023d4f8003, pud=000000023da9b003, pmd=000000023d4b3003, pte=360000298607bd3
> 
> As told by Catalin: "On arm64 without hardware Access Flag, copying from
> user will fail because the pte is old and cannot be marked young. So we
> always end up with zeroed page after fork() + CoW for pfn mappings. we
> don't always have a hardware-managed access flag on arm64."
> 
> This patch fix it by calling pte_mkyoung. Also, the parameter is
> changed because vmf should be passed to cow_user_page()
> 
> Add a WARN_ON_ONCE when __copy_from_user_inatomic() returns error
> in case there can be some obscure use-case.(by Kirill)
> 
> [1] https://github.com/pmem/pmdk/tree/master/src/test/vmmalloc_fork
> 
> Reported-by: Yibo Cai <Yibo.Cai@arm.com>
> Signed-off-by: Jia He <justin.he@arm.com>
> ---
>  mm/memory.c | 65 ++++++++++++++++++++++++++++++++++++++++++++++++-----
>  1 file changed, 59 insertions(+), 6 deletions(-)
> 
> diff --git a/mm/memory.c b/mm/memory.c
> index e2bb51b6242e..7c38c1ce5440 100644
> --- a/mm/memory.c
> +++ b/mm/memory.c
> @@ -118,6 +118,13 @@ int randomize_va_space __read_mostly =
>  					2;
>  #endif
>  
> +#ifndef arch_faults_on_old_pte
> +static inline bool arch_faults_on_old_pte(void)
> +{
> +	return false;
> +}
> +#endif
> +
>  static int __init disable_randmaps(char *s)
>  {
>  	randomize_va_space = 0;
> @@ -2140,8 +2147,12 @@ static inline int pte_unmap_same(struct mm_struct *mm, pmd_t *pmd,
>  	return same;
>  }
>  
> -static inline void cow_user_page(struct page *dst, struct page *src, unsigned long va, struct vm_area_struct *vma)
> +static inline int cow_user_page(struct page *dst, struct page *src,
> +				struct vm_fault *vmf)
>  {
> +	struct vm_area_struct *vma = vmf->vma;
> +	unsigned long addr = vmf->address;
> +
>  	debug_dma_assert_idle(src);
>  
>  	/*
> @@ -2151,21 +2162,52 @@ static inline void cow_user_page(struct page *dst, struct page *src, unsigned lo
>  	 * fails, we just zero-fill it. Live with it.
>  	 */
>  	if (unlikely(!src)) {
> -		void *kaddr = kmap_atomic(dst);
> -		void __user *uaddr = (void __user *)(va & PAGE_MASK);
> +		void *kaddr;
> +		void __user *uaddr = (void __user *)(addr & PAGE_MASK);
> +		pte_t entry;
> +
> +		/* On architectures with software "accessed" bits, we would
> +		 * take a double page fault, so mark it accessed here.
> +		 */
> +		if (arch_faults_on_old_pte() && !pte_young(vmf->orig_pte)) {
> +			spin_lock(vmf->ptl);

It's probably okay for arm64, but for archs with highmem it will be
a problem.

Use pte_offset_map_lock() instead.

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
> +				spin_unlock(vmf->ptl);

And pte_unmap_unlock() here...

> +				return -1;
> +			}
> +			spin_unlock(vmf->ptl);

and here.

> +		}
>  
> +		kaddr = kmap_atomic(dst);
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
>  			clear_page(kaddr);
> +		}
>  		kunmap_atomic(kaddr);
>  		flush_dcache_page(dst);
>  	} else
> -		copy_user_highpage(dst, src, va, vma);
> +		copy_user_highpage(dst, src, addr, vma);
> +
> +	return 0;
>  }
>  
>  static gfp_t __get_fault_gfp_mask(struct vm_area_struct *vma)
> @@ -2318,7 +2360,16 @@ static vm_fault_t wp_page_copy(struct vm_fault *vmf)
>  				vmf->address);
>  		if (!new_page)
>  			goto oom;
> -		cow_user_page(new_page, old_page, vmf->address, vma);
> +
> +		if (cow_user_page(new_page, old_page, vmf)) {
> +			/* COW failed, if the fault was solved by other,
> +			 * it's fine. If not, userspace would re-fault on
> +			 * the same address and we will handle the fault
> +			 * from the second attempt.
> +			 */
> +			put_page(new_page);

I think you also need to give the reference on the old page back:

			if (old_page)
				put_page(old_page);

> +			goto normal;

I don't see much point in this goto. Just return 0.
> +		}
>  	}
>  
>  	if (mem_cgroup_try_charge_delay(new_page, mm, GFP_KERNEL, &memcg, false))
> @@ -2420,6 +2471,8 @@ static vm_fault_t wp_page_copy(struct vm_fault *vmf)
>  		}
>  		put_page(old_page);
>  	}
> +
> +normal:
>  	return page_copied ? VM_FAULT_WRITE : 0;
>  oom_free_new:
>  	put_page(new_page);
> -- 
> 2.17.1
> 
> 

-- 
 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
