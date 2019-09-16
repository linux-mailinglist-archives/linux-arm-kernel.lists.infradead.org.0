Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93753B36F0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 11:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+5i++Xzuw2hzepWftVYRhPMJ591pCTjF/BKLNKdQW0=; b=oBX0Z3YaNEnKpE
	KAr1KePZigs9s0WJlKz6GRi8ppQWBnYKgQJShC/rijjcRaxt0eDthULm0JAC3ubYI4K3P8aJZpJij
	Th2zc4cgHUw3zjxnTOKKR520zNaSds+O3FEDYOR1PlzkrFSoBbOJgdsC0DMebPx3PmhyhJ2+b+hdW
	f0TNrc755VcVWJt+tPFo6tQ7XTyLQAv6QQRJAW6afrgjsvNWgoJPsGPuTJJqZUo623i0zl84ZKSAd
	RuwjTvxL6tIjaKGU+fxXJPgEDAJheVZufN3ev4dfy6EyJK/J7SW9B8IPWy3kcVUWBc7Qpk/rkS/xC
	u+cPLrnJUjrnbuNPGhkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9n7m-0000Lq-9D; Mon, 16 Sep 2019 09:16:46 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9n7V-0000Ky-6i
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 09:16:30 +0000
Received: by mail-ed1-x541.google.com with SMTP id h33so3593012edh.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 02:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vBZCS9nU1fSH+kmSCYigm2Yq8YU/srN9xKPMLdxx9uA=;
 b=yNH4GN7LaJOP3yS9aV4fF11ma1PFEb7h83O4Jf9wGnCAwQ3sIB0HjqygkTPkLbIX4i
 fpzZFr9Ng8cKCy3x990mhweiHyLCASKWNlnkwpho9OSGlLFttD271s7WNCgaDENT5il7
 6LScrSQDK35mJXcuHW16ivhg6hD9hRDBcPp0a4CIxMBbCnau5Ijn3LRBS7HJ5NxH96Xm
 T9cm3x8hG9/hCBdsRQ4+RiD1j1PDzIzWfU5wGcU0clDw5lAiWT+qS+6kBai15OK2tuXI
 j3Vc+mNUlZL8X1pfK/Pp4igTpzakDaZNk//o1k0AcgB8w0tKGOglAuPzSFVBsTeTCHRF
 CQaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vBZCS9nU1fSH+kmSCYigm2Yq8YU/srN9xKPMLdxx9uA=;
 b=t7i9JaQ4x7BOa1cTxxSbSOx5Y7vL50OKLwiwkTbcwWGk8AzY9G07+jgRqTR2RrM/0I
 bWmldT0LNxUA9kaeTLrMQiDXwR9nXXZQ+YBkYoVouj9PjdX3PbKVWpp/NtAYXoPCurH2
 naQqKGk3mwdvulfewk/94sHK6LPuTTRvwE+ffdbCiTAQ/+UMz2Xfiw75Ry71YfvsAxao
 u6jRNRKKku4YkzwgNRd93fRqqrp2kA4Fdz9xZUJ4PVfGZdt6qA+faucDLZzc2Nl3M28A
 Kcgcnx91UBeZZRx/Ja7khhCcVoPxPtkHcj8o1hJU5MkDuNFodbQJEi7q15J2uL/NVuPf
 aFqg==
X-Gm-Message-State: APjAAAVa653zISCYIPHtK+qDKgQwk4RqO825G9u1uTneCukQPF7aAW1w
 M7/NawM3CsfVpRgNw4CWRci69Q==
X-Google-Smtp-Source: APXvYqyGScQN03qDrXuVbBMNDdbJlq+zqcHgLnsomhbDkQ6dQ4qNnJhT5ZwIkawoSd3+haiCNIOt4w==
X-Received: by 2002:a50:87ca:: with SMTP id 10mr9263258edz.77.1568625387310;
 Mon, 16 Sep 2019 02:16:27 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id br15sm3577556ejb.2.2019.09.16.02.16.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Sep 2019 02:16:26 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id 85A0A104174; Mon, 16 Sep 2019 12:16:28 +0300 (+03)
Date: Mon, 16 Sep 2019 12:16:28 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Jia He <justin.he@arm.com>
Subject: Re: [PATCH v3 2/2] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Message-ID: <20190916091628.bkuvd3g3ie3x6qav@box.shutemov.name>
References: <20190913163239.125108-1-justin.he@arm.com>
 <20190913163239.125108-3-justin.he@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190913163239.125108-3-justin.he@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_021629_253834_B8CC1BD9 
X-CRM114-Status: GOOD (  25.88  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ralph Campbell <rcampbell@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Jun Yao <yaojun8558363@gmail.com>,
 linux-mm@kvack.org, =?utf-8?B?SsOpcsO0bWU=?= Glisse <jglisse@redhat.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Punit Agrawal <punitagrawal@gmail.com>, Marc Zyngier <maz@kernel.org>,
 hejianet@gmail.com, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Alex Van Brunt <avanbrunt@nvidia.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 14, 2019 at 12:32:39AM +0800, Jia He wrote:
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
>  mm/memory.c | 30 +++++++++++++++++++++++++-----
>  1 file changed, 25 insertions(+), 5 deletions(-)
> 
> diff --git a/mm/memory.c b/mm/memory.c
> index e2bb51b6242e..a64af6495f71 100644
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
> @@ -2140,7 +2147,8 @@ static inline int pte_unmap_same(struct mm_struct *mm, pmd_t *pmd,
>  	return same;
>  }
>  
> -static inline void cow_user_page(struct page *dst, struct page *src, unsigned long va, struct vm_area_struct *vma)
> +static inline void cow_user_page(struct page *dst, struct page *src,
> +				struct vm_fault *vmf)
>  {
>  	debug_dma_assert_idle(src);
>  
> @@ -2152,20 +2160,32 @@ static inline void cow_user_page(struct page *dst, struct page *src, unsigned lo
>  	 */
>  	if (unlikely(!src)) {
>  		void *kaddr = kmap_atomic(dst);
> -		void __user *uaddr = (void __user *)(va & PAGE_MASK);
> +		void __user *uaddr = (void __user *)(vmf->address & PAGE_MASK);
> +		pte_t entry;
>  
>  		/*
>  		 * This really shouldn't fail, because the page is there
>  		 * in the page tables. But it might just be unreadable,
>  		 * in which case we just give up and fill the result with
> -		 * zeroes.
> +		 * zeroes. If PTE_AF is cleared on arm64, it might
> +		 * cause double page fault. So makes pte young here
>  		 */
> +		if (arch_faults_on_old_pte() && !pte_young(vmf->orig_pte)) {
> +			spin_lock(vmf->ptl);
> +			entry = pte_mkyoung(vmf->orig_pte);

Should't you re-validate that orig_pte after re-taking ptl? It can be
stale by now.

> +			if (ptep_set_access_flags(vmf->vma, vmf->address,
> +						  vmf->pte, entry, 0))
> +				update_mmu_cache(vmf->vma, vmf->address,
> +						 vmf->pte);
> +			spin_unlock(vmf->ptl);
> +		}
> +
>  		if (__copy_from_user_inatomic(kaddr, uaddr, PAGE_SIZE))
>  			clear_page(kaddr);
>  		kunmap_atomic(kaddr);
>  		flush_dcache_page(dst);
>  	} else
> -		copy_user_highpage(dst, src, va, vma);
> +		copy_user_highpage(dst, src, vmf->address, vmf->vma);
>  }
>  
>  static gfp_t __get_fault_gfp_mask(struct vm_area_struct *vma)
> @@ -2318,7 +2338,7 @@ static vm_fault_t wp_page_copy(struct vm_fault *vmf)
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
