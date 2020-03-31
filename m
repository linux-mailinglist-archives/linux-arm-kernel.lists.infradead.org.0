Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82089199B42
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:19:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xIuSYRNzetH5BcWjwCP0Y06R8WmUc7CKkhQy0YChwwE=; b=KeWfR5+QuOrG9d
	quGW7dXbaFJD735Pd33Q4gsMxCa0J/wTLABr9FFr1IwOz6uvzXY2sXtVaVHV5rRjjh+E1XoUp7pWn
	Aouh6Z718HGxz1+Z0V82aHpvbbPCfYmvyx1r8MssYZ804WJ/hwvSVUqP6JKwg75V6n/8f/mNlZ3qE
	DTAjTnox4T45DmZndoHJaW6jFRCQQs8xsuPJnoIBHkbqJ1dxMIgUxONpL/c7XFxV8+nRgT3mVKXeT
	zllvsj9uJR+t69OsyDGVZQqhVmY8ecTrlha3usBuLcuerLA30k3c1MExtNb1m9AIQJYbkNd73CpH3
	9sTn9/bFEhALGAwCHTAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJc2-0005zA-5v; Tue, 31 Mar 2020 16:19:38 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJb7-0005Ky-1w
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 16:18:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Gs4vlKPZRmw6qFabLUGpmw6ZvJFAEDHERKrZ05UnbXI=; b=cI8UDinCIjHhBUM7gNxhf5vRms
 cDTicfYolmv/c0bZH8cGFnbQRbx17eFa0uts3MeYMg9QaY+nyYLCsW+WQUkxLA/ayUbd6WOPzWMQf
 VgdjmBCX6+RsOkeO9WnEN3FadbthWqUYQG01MUHCkmM0V/gwFjBYzCk29WoWajEFtkYVVFLiploTP
 yM2PheLqf6TCyZ6iLm1KpwtLTH2gSCjCp1t2B0c+bw4vlkjLDQwjJi2v0EAL5kY/iw0n+OZV8+OP1
 xWxGV7fHID/P/ZTXaO5QZeO/rrz9YmBWTY6EFaKc88NPDQpC6J/h3QH/6hd4Kw5kXUHg482qcP3tE
 e0Eo5trw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJIa7-0005Kb-Q4; Tue, 31 Mar 2020 15:13:35 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id B907B30477A;
 Tue, 31 Mar 2020 17:13:31 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 714FD29D71B7B; Tue, 31 Mar 2020 17:13:31 +0200 (CEST)
Date: Tue, 31 Mar 2020 17:13:31 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Zhenyu Ye <yezhenyu2@huawei.com>
Subject: Re: [RFC PATCH v5 4/8] mm: tlb: Pass struct mmu_gather to
 flush_pmd_tlb_range
Message-ID: <20200331151331.GS20730@hirez.programming.kicks-ass.net>
References: <20200331142927.1237-1-yezhenyu2@huawei.com>
 <20200331142927.1237-5-yezhenyu2@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331142927.1237-5-yezhenyu2@huawei.com>
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-mm@kvack.org,
 guohanjun@huawei.com, will@kernel.org, linux-arch@vger.kernel.org,
 yuzhao@google.com, corbet@lwn.net, maz@kernel.org, steven.price@arm.com,
 arm@kernel.org, Dave.Martin@arm.com, arnd@arndb.de, suzuki.poulose@arm.com,
 npiggin@gmail.com, zhangshaokun@hisilicon.com, broonie@kernel.org,
 rostedt@goodmis.org, prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 xiexiangyou@huawei.com, tony.luck@intel.com, vgupta@synopsys.com,
 linux-kernel@vger.kernel.org, aneesh.kumar@linux.ibm.com,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 10:29:23PM +0800, Zhenyu Ye wrote:
> diff --git a/include/asm-generic/pgtable.h b/include/asm-generic/pgtable.h
> index e2e2bef07dd2..32d4661e5a56 100644
> --- a/include/asm-generic/pgtable.h
> +++ b/include/asm-generic/pgtable.h
> @@ -1160,10 +1160,10 @@ static inline int pmd_free_pte_page(pmd_t *pmd, unsigned long addr)
>   * invalidate the entire TLB which is not desitable.
>   * e.g. see arch/arc: flush_pmd_tlb_range
>   */
> -#define flush_pmd_tlb_range(vma, addr, end)	flush_tlb_range(vma, addr, end)
> +#define flush_pmd_tlb_range(tlb, vma, addr, end)	flush_tlb_range(vma, addr, end)
>  #define flush_pud_tlb_range(vma, addr, end)	flush_tlb_range(vma, addr, end)
>  #else
> -#define flush_pmd_tlb_range(vma, addr, end)	BUILD_BUG()
> +#define flush_pmd_tlb_range(tlb, vma, addr, end)	BUILD_BUG()
>  #define flush_pud_tlb_range(vma, addr, end)	BUILD_BUG()
>  #endif
>  #endif
> diff --git a/mm/pgtable-generic.c b/mm/pgtable-generic.c
> index 3d7c01e76efc..96c9cf77bfb5 100644
> --- a/mm/pgtable-generic.c
> +++ b/mm/pgtable-generic.c
> @@ -109,8 +109,14 @@ int pmdp_set_access_flags(struct vm_area_struct *vma,
>  	int changed = !pmd_same(*pmdp, entry);
>  	VM_BUG_ON(address & ~HPAGE_PMD_MASK);
>  	if (changed) {
> +		struct mmu_gather tlb;
> +		unsigned long tlb_start = address;
> +		unsigned long tlb_end = address + HPAGE_PMD_SIZE;
>  		set_pmd_at(vma->vm_mm, address, pmdp, entry);
> -		flush_pmd_tlb_range(vma, address, address + HPAGE_PMD_SIZE);
> +		tlb_gather_mmu(&tlb, vma->vm_mm, tlb_start, tlb_end);
> +		tlb.cleared_pmds = 1;
> +		flush_pmd_tlb_range(&tlb, vma, tlb_start, tlb_end);
> +		tlb_finish_mmu(&tlb, tlb_start, tlb_end);
>  	}
>  	return changed;
>  }

This is madness. Please, carefully consider what you just wrote and what
it will do in the generic case.

Instead of trying to retro-fit flush_*tlb_range() to take an mmu_gather
parameter, please replace them out-right.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
