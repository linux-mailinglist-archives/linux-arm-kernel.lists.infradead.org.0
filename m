Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D86FB6551
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 16:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+VKut5iVvl7LsyYb/RU9uOSWkQFBC6IJ84/7UWeNK8=; b=m1nLYrdyzs4KnQ
	sd9Zdh/6vfM9QAlwefohd401ywfX8mOsAhymjVteJooC5+mSvnd0oNCimbs8MK9zrdzC4f8AJo6Xy
	NWEQohJkTz4npWO7p63J1ivmfhuSFtvE9BMp4MSpIL/mDPglQ3qj7zzAtJT0uufpjjuLxXzoa1EYa
	eW2ad7RonoTFxuo23uI7C3fOrPl3xlIuCEnqvCwjd8GhCg5zMQuI9eXNBKFjasYqk6ZulUJ9hkae3
	P70eAY2bPCuMq20DYtzSVayBJEhJI0EbzQI+xoQsIQZQtMi/o4I0iNN2Twn9KhNjJpNYA322ZQEhN
	XKjLze6y4LXlWmmqV6rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAaVc-0006EP-Bb; Wed, 18 Sep 2019 14:00:40 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAaVR-0006D0-Kl
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 14:00:31 +0000
Received: by mail-ed1-x543.google.com with SMTP id h2so98647edn.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 07:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=j2UHjQKs2OgxGL6R7ikxpfBY/dljbR15qg+7qfxHjcE=;
 b=IZjWryCw0rr2uH7QX0RsTwStJaFrk2aI+h1A5E1rlDUjawxjtZsoOZQQfPACpoV7Yq
 vq1SOvaeE3pD6n2p95uruz94PuqO6FGKZfKPiDMQrZXrmvrQuv0gcJqNrOSqx5NS/bCi
 ibiFGPnpTVNSsANXpfZGCsO7aRL5639d38/3q9otDkeEBcKPn24pWTWhwpwS3fLY4lpt
 SBmj+KeOXdvbTX6tbSrPjaBJy0u5gCrTEYH1YmqZTTUe7LzXjyFIWNfdAu52ziYgvOKv
 ktSSfLnxeyy0uOOjeeBAwggWKd4EPjyJRU4+CD3IOKozB5XAujmov9nvf1F+fV9ZjWba
 rtqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=j2UHjQKs2OgxGL6R7ikxpfBY/dljbR15qg+7qfxHjcE=;
 b=OH8FiNLj7WbUxNBlkuFXtxXUEbvX5k4c69363ICD2fVibFnlL6lbxwmawfJkSwFrjo
 rPnufROQW7CtOm4xXrYUr4NaL6KpF1N2Tloy6oOOBTwF7AybDcxkSTuxm0oAz8jp9wH8
 LrwIrF16yz9nd0mdpjcKOh9HL9na1ez+TXK0uWI9s04yqXWJClLGTS0eN65dKOl64J0A
 HrXOh9U9HLhLXhdkYnhBDBDYK7e26jPZ1skuykWDljuS9/4v+lAhVjcaRJo1NOVcGvat
 noaB8zHMiDEL4qNPCDfEFyYpVNNH7F4rSyDwtcdPjm6QaZozHBzsXYEhmTaNMutU0aL7
 Fg0w==
X-Gm-Message-State: APjAAAU+2gF05cb8ELUJYFTiQ4gb/J28JeYg8Aevzo5v04Xcriiurx+w
 adxTPFivfvUJro8o+9jS/d4Gmw==
X-Google-Smtp-Source: APXvYqyK1VlGTp35C20LNarV/+XSqYp4iDD33GkUhQo8bx3xDETvb6q2bit//qqmiu+su0hBlerZjA==
X-Received: by 2002:a50:ef02:: with SMTP id m2mr1236847eds.157.1568815225760; 
 Wed, 18 Sep 2019 07:00:25 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id f29sm1061454eda.76.2019.09.18.07.00.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Sep 2019 07:00:24 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id E6C62101B27; Wed, 18 Sep 2019 17:00:27 +0300 (+03)
Date: Wed, 18 Sep 2019 17:00:27 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Jia He <justin.he@arm.com>
Subject: Re: [PATCH v4 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Message-ID: <20190918140027.ckj32xnryyyesc23@box>
References: <20190918131914.38081-1-justin.he@arm.com>
 <20190918131914.38081-4-justin.he@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918131914.38081-4-justin.he@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_070029_733233_414A0F59 
X-CRM114-Status: GOOD (  27.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, Sep 18, 2019 at 09:19:14PM +0800, Jia He wrote:
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
> [1] https://github.com/pmem/pmdk/tree/master/src/test/vmmalloc_fork
> 
> Reported-by: Yibo Cai <Yibo.Cai@arm.com>
> Signed-off-by: Jia He <justin.he@arm.com>
> ---
>  mm/memory.c | 35 ++++++++++++++++++++++++++++++-----
>  1 file changed, 30 insertions(+), 5 deletions(-)
> 
> diff --git a/mm/memory.c b/mm/memory.c
> index e2bb51b6242e..d2c130a5883b 100644
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
> +static inline void cow_user_page(struct page *dst, struct page *src,
> +				 struct vm_fault *vmf)
>  {
> +	struct vm_area_struct *vma = vmf->vma;
> +	unsigned long addr = vmf->address;
> +
>  	debug_dma_assert_idle(src);
>  
>  	/*
> @@ -2152,20 +2163,34 @@ static inline void cow_user_page(struct page *dst, struct page *src, unsigned lo
>  	 */
>  	if (unlikely(!src)) {
>  		void *kaddr = kmap_atomic(dst);
> -		void __user *uaddr = (void __user *)(va & PAGE_MASK);
> +		void __user *uaddr = (void __user *)(addr & PAGE_MASK);
> +		pte_t entry;
>  
>  		/*
>  		 * This really shouldn't fail, because the page is there
>  		 * in the page tables. But it might just be unreadable,
>  		 * in which case we just give up and fill the result with
> -		 * zeroes.
> +		 * zeroes. On architectures with software "accessed" bits,
> +		 * we would take a double page fault here, so mark it
> +		 * accessed here.
>  		 */
> +		if (arch_faults_on_old_pte() && !pte_young(vmf->orig_pte)) {
> +			spin_lock(vmf->ptl);
> +			if (likely(pte_same(*vmf->pte, vmf->orig_pte))) {
> +				entry = pte_mkyoung(vmf->orig_pte);
> +				if (ptep_set_access_flags(vma, addr,
> +							  vmf->pte, entry, 0))
> +					update_mmu_cache(vma, addr, vmf->pte);
> +			}

I don't follow.

So if pte has changed under you, you don't set the accessed bit, but never
the less copy from the user.

What makes you think it will not trigger the same problem?

I think we need to make cow_user_page() fail in this case and caller --
wp_page_copy() -- return zero. If the fault was solved by other thread, we
are fine. If not userspace would re-fault on the same address and we will
handle the fault from the second attempt.

> +			spin_unlock(vmf->ptl);
> +		}
> +
>  		if (__copy_from_user_inatomic(kaddr, uaddr, PAGE_SIZE))
>  			clear_page(kaddr);
>  		kunmap_atomic(kaddr);
>  		flush_dcache_page(dst);
>  	} else
> -		copy_user_highpage(dst, src, va, vma);
> +		copy_user_highpage(dst, src, addr, vma);
>  }
>  
>  static gfp_t __get_fault_gfp_mask(struct vm_area_struct *vma)
> @@ -2318,7 +2343,7 @@ static vm_fault_t wp_page_copy(struct vm_fault *vmf)
>  				vmf->address);
>  		if (!new_page)
>  			goto oom;
> -		cow_user_page(new_page, old_page, vmf->address, vma);
> +		cow_user_page(new_page, old_page, vmf);
>  	}
>  
>  	if (mem_cgroup_try_charge_delay(new_page, mm, GFP_KERNEL, &memcg, false))
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
