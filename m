Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E14197BAD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 14:17:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rK3XHe1KppVtJX3Js8QEdnTLaTCt1Ndtl8ueU6q6fXo=; b=CgpMiKLFuSOt/b
	v3VvC8Ih6+DSDkd8vM48OrO8/R3J76gkCWoAXoA/ebQfFqtXHAq3NKSmBgfCmwjWe13IFXivfUXyQ
	kqGKKUvihyIkb6gfluU3f384hz2PzsVdyPf1kklrzfRc44vyhyqicHOka7TBJyUbLd+V9Oax6UwmQ
	O3yQcWGqlnGn3L/TxbLEcJBjaJeCaj6cQ2fvpfASRoQayp6u0ef3J4Oh0oqHnYprW2JzNQ0FHnW6p
	GCAbYlhrv74NYHZiOfO+lXxm64HBNyImKYBb4Lg/uYPIK8Y1Bwa0ob+1kDESeGbr7PcFmA5cCawVa
	LA05DVlJTL8oCcNbp9Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jItLp-0004XY-55; Mon, 30 Mar 2020 12:17:09 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jItLd-0004XC-Ka; Mon, 30 Mar 2020 12:16:57 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id EAFAE303C41;
 Mon, 30 Mar 2020 14:16:54 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id CDA5F29D04D6E; Mon, 30 Mar 2020 14:16:54 +0200 (CEST)
Date: Mon, 30 Mar 2020 14:16:54 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Zhenyu Ye <yezhenyu2@huawei.com>
Subject: Re: [RFC][Qusetion] the value of cleared_(ptes|pmds|puds|p4ds) in
 struct mmu_gather
Message-ID: <20200330121654.GL20696@hirez.programming.kicks-ass.net>
References: <fbb00ac0-9104-8d25-f225-7b3d1b17a01f@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fbb00ac0-9104-8d25-f225-7b3d1b17a01f@huawei.com>
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
Cc: linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, npiggin@gmail.com,
 arm@kernel.org, bp@alien8.de, xiexiangyou@huawei.com, luto@kernel.org,
 schwidefsky@de.ibm.com, akpm@linux-foundation.org,
 torvalds@linux-foundation.org, mingo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 28, 2020 at 12:30:50PM +0800, Zhenyu Ye wrote:
> Hi all,
> 
> commit a6d60245 "Track which levels of the page tables have been cleared"
> added cleared_(ptes|pmds|puds|p4ds) in struct mmu_gather, and the values
> of them are set in some places. For example:
> 
> In include/asm-generic/tlb.h, pte_free_tlb() set the tlb->cleared_pmds:
> ---8<---
> #ifndef pte_free_tlb
> #define pte_free_tlb(tlb, ptep, address)			\
> 	do {							\
> 		__tlb_adjust_range(tlb, address, PAGE_SIZE);	\
> 		tlb->freed_tables = 1;				\
> 		tlb->cleared_pmds = 1;				\
> 		__pte_free_tlb(tlb, ptep, address);		\
> 	} while (0)
> #endif
> ---8<---
> 
> 
> However, in arch/s390/include/asm/tlb.h, pte_free_tlb() set the tlb->cleared_ptes:
> ---8<---
> static inline void pte_free_tlb(struct mmu_gather *tlb, pgtable_t pte,
>                                 unsigned long address)
> {
> 	__tlb_adjust_range(tlb, address, PAGE_SIZE);
> 	tlb->mm->context.flush_mm = 1;
> 	tlb->freed_tables = 1;
> 	tlb->cleared_ptes = 1;
> 	/*
> 	 * page_table_free_rcu takes care of the allocation bit masks
> 	 * of the 2K table fragments in the 4K page table page,
> 	 * then calls tlb_remove_table.
> 	 */
> 	page_table_free_rcu(tlb, (unsigned long *) pte, address);
> }
> ---8<---
> 
> 
> In my view, the cleared_(ptes|pmds|puds) and (pte|pmd|pud)_free_tlb
> correspond one-to-one.  So we should set cleared_ptes in pte_free_tlb(),
> then use it when needed.

So pte_free_tlb() clears a table of PTE entries, or a PMD level entity,
also see free_pte_range(). So the generic code makes sense to me. The
PTE level invalidations will have happened on tlb_remove_tlb_entry().

> I'm very confused about this. Which is wrong? Or is there something
> I understand wrong?

I agree the s390 case is puzzling, Martin does s390 need a PTE level
invalidate for removing a PTE table or was this a mistake?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
