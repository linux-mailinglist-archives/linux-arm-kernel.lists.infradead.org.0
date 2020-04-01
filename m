Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 306A819AB87
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 14:20:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=osNTFys2ODmoESEC0sCADr023PcieKEmNxdxKE01WWM=; b=cgnuQjpWUQ55VI
	uMrFKgVdz1rhuPVLCxxcXKwrZYW+dIP1w6Hb/TvwDithANxMFj7blQP0uPIcTELi5mKu7Acp9GfgX
	pl0UR+m/4lIXMYom6l/pfoT6CGpIzi7kCKetliD7wVfHaqfw31qPxZ9OUasZG9cLpxXjK0lHt6BZU
	BJSVG067gGFUoCgJoF5uISeRAQhqxYmQhjGoRxwjBfNI9dii6ICzkCgJhO/nzwqeRlOLkKe3mKeKg
	3gyOja3xdCaGQ6mPTgtTRUwcHGIRJBoj1h/3Y7GihZwSE4fhtC4XpfcKVhHxeP6x0fvOROx0Dd+Fc
	Rr5j2rqgThbEY9O+fcBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJcLw-0007Ca-R4; Wed, 01 Apr 2020 12:20:16 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJcLn-0005zJ-TY; Wed, 01 Apr 2020 12:20:08 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id B47C2301631;
 Wed,  1 Apr 2020 14:20:04 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 7FD8929E261CB; Wed,  1 Apr 2020 14:20:04 +0200 (CEST)
Date: Wed, 1 Apr 2020 14:20:04 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Zhenyu Ye <yezhenyu2@huawei.com>
Subject: Re: [RFC PATCH v5 4/8] mm: tlb: Pass struct mmu_gather to
 flush_pmd_tlb_range
Message-ID: <20200401122004.GE20713@hirez.programming.kicks-ass.net>
References: <20200331142927.1237-1-yezhenyu2@huawei.com>
 <20200331142927.1237-5-yezhenyu2@huawei.com>
 <20200331151331.GS20730@hirez.programming.kicks-ass.net>
 <fe12101e-8efe-22ad-0258-e6aeafc798cc@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fe12101e-8efe-22ad-0258-e6aeafc798cc@huawei.com>
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

On Wed, Apr 01, 2020 at 04:51:15PM +0800, Zhenyu Ye wrote:
> On 2020/3/31 23:13, Peter Zijlstra wrote:

> > Instead of trying to retro-fit flush_*tlb_range() to take an mmu_gather
> > parameter, please replace them out-right.
> > 
> 
> I'm sorry that I'm not sure what "replace them out-right" means.  Do you
> mean that I should define flush_*_tlb_range like this?
> 
> #define flush_pmd_tlb_range(vma, addr, end)				\
> 	do {								\
> 		struct mmu_gather tlb;					\
> 		tlb_gather_mmu(&tlb, (vma)->vm_mm, addr, end);		\
> 		tlba.cleared_pmds = 1;					\
> 		flush_tlb_range(&tlb, vma, addr, end);			\
> 		tlb_finish_mmu(&tlb, addr, end);			\
> 	} while (0)
> 

I was thinking to remove flush_*tlb_range() entirely (from generic
code).

And specifically to not use them like the above; instead extend the
mmu_gather API.

Specifically, if you wanted to express flush_pmd_tlb_range() in mmu
gather, you'd write it like:

static inline void flush_pmd_tlb_range(struct vm_area_struct *vma, unsigned long addr, unsigned long end)
{
	struct mmu_gather tlb;

	tlb_gather_mmu(&tlb, vma->vm_mm, addr, end);
	tlb_start_vma(&tlb, vma);
	tlb.cleared_pmds = 1;
	__tlb_adjust_range(addr, end - addr);
	tlb_end_vma(&tlb, vma);
	tlb_finish_mmu(&tlb, addr, end);
}

Except of course, that the code between start_vma and end_vma is not a
proper mmu_gather API.

So maybe add:

  tlb_flush_{pte,pmd,pud,p4d}_range()

Then we can write:

static inline void flush_XXX_tlb_range(struct vm_area_struct *vma, unsigned long addr, unsigned long end)
{
	struct mmu_gather tlb;

	tlb_gather_mmu(&tlb, vma->vm_mm, addr, end);
	tlb_start_vma(&tlb, vma);
	tlb_flush_XXX_range(&tlb, addr, end - addr);
	tlb_end_vma(&tlb, vma);
	tlb_finish_mmu(&tlb, addr, end);
}

But when I look at the output of:

  git grep flush_.*tlb_range -- :^arch/

I doubt it makes sense to provide wrappers like the above.

( Also, we should probably remove the (addr, end) arguments from
tlb_finish_mmu(), Will? )

---
diff --git a/include/asm-generic/tlb.h b/include/asm-generic/tlb.h
index f391f6b500b4..be5452a8efaa 100644
--- a/include/asm-generic/tlb.h
+++ b/include/asm-generic/tlb.h
@@ -511,6 +511,34 @@ static inline void tlb_end_vma(struct mmu_gather *tlb, struct vm_area_struct *vm
 }
 #endif
 
+static inline void tlb_flush_pte_range(struct mmu_gather *tlb,
+				       unsigned long address, unsigned long size)
+{
+	__tlb_adjust_range(tlb, address, size);
+	tlb->cleared_ptes = 1;
+}
+
+static inline void tlb_flush_pmd_range(struct mmu_gather *tlb,
+				       unsigned long address, unsigned long size)
+{
+	__tlb_adjust_range(tlb, address, size);
+	tlb->cleared_pmds = 1;
+}
+
+static inline void tlb_flush_pud_range(struct mmu_gather *tlb,
+				       unsigned long address, unsigned long size)
+{
+	__tlb_adjust_range(tlb, address, size);
+	tlb->cleared_puds = 1;
+}
+
+static inline void tlb_flush_p4d_range(struct mmu_gather *tlb,
+				       unsigned long address, unsigned long size)
+{
+	__tlb_adjust_range(tlb, address, size);
+	tlb->cleared_p4ds = 1;
+}
+
 #ifndef __tlb_remove_tlb_entry
 #define __tlb_remove_tlb_entry(tlb, ptep, address) do { } while (0)
 #endif
@@ -524,8 +552,7 @@ static inline void tlb_end_vma(struct mmu_gather *tlb, struct vm_area_struct *vm
  */
 #define tlb_remove_tlb_entry(tlb, ptep, address)		\
 	do {							\
-		__tlb_adjust_range(tlb, address, PAGE_SIZE);	\
-		tlb->cleared_ptes = 1;				\
+		tlb_flush_pte_range(tlb, address, PAGE_SIZE);	\
 		__tlb_remove_tlb_entry(tlb, ptep, address);	\
 	} while (0)
 
@@ -550,8 +577,7 @@ static inline void tlb_end_vma(struct mmu_gather *tlb, struct vm_area_struct *vm
 
 #define tlb_remove_pmd_tlb_entry(tlb, pmdp, address)			\
 	do {								\
-		__tlb_adjust_range(tlb, address, HPAGE_PMD_SIZE);	\
-		tlb->cleared_pmds = 1;					\
+		tlb_flush_pmd_range(tlb, address, HPAGE_PMD_SIZE);	\
 		__tlb_remove_pmd_tlb_entry(tlb, pmdp, address);		\
 	} while (0)
 
@@ -565,8 +591,7 @@ static inline void tlb_end_vma(struct mmu_gather *tlb, struct vm_area_struct *vm
 
 #define tlb_remove_pud_tlb_entry(tlb, pudp, address)			\
 	do {								\
-		__tlb_adjust_range(tlb, address, HPAGE_PUD_SIZE);	\
-		tlb->cleared_puds = 1;					\
+		tlb_flush_pud_range(tlb, address, HPAGE_PUD_SIZE);	\
 		__tlb_remove_pud_tlb_entry(tlb, pudp, address);		\
 	} while (0)
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
