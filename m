Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CB277F72
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 14:33:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLuOB9ViJVD3vg6S5sEb1Z2xM+zGjBxgV1fPzo+Aarg=; b=GDcUoitSEwGTFP
	YjHo/m/BsPahbK2c+ettseNDOvtOFpEOGR7OuecYyZViMfErNpIebzXHe/V08nwno5007kzcZ6J0F
	ztuyl/5HIEvfRUp3rTmZ14pGCTLBIEP6Yhcrape+MZnCjaYDi7W+H5abknx/zV+UCS8N5JjgNit7+
	bcQjmKe8WsIOmIXyJsMQeJ32nzMtaMo691kEboF+uQ+gWVTzTq73KqCD3eNC3rUtsw3/BzyBH3XdP
	B9rAwgrAHP12YbtYh06uQz7kZ7gGr9PPR/eRcmNIPCnoOzS0zQ8Y7s613a14h6eTZbOfvtttAn/Lp
	bwFLf1pFjrkMTD2NGSlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hriMh-0001mj-Mz; Sun, 28 Jul 2019 12:33:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hriMK-0001mP-BB
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 12:33:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D541337;
 Sun, 28 Jul 2019 05:33:02 -0700 (PDT)
Received: from [10.163.1.126] (unknown [10.163.1.126])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B3BF13F71A;
 Sun, 28 Jul 2019 05:32:56 -0700 (PDT)
Subject: Re: [PATCH v9 11/21] mm: pagewalk: Add p4d_entry() and pgd_entry()
To: Steven Price <steven.price@arm.com>, linux-mm@kvack.org
References: <20190722154210.42799-1-steven.price@arm.com>
 <20190722154210.42799-12-steven.price@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <b61435a3-0da0-de57-0993-b1fffeca3ca9@arm.com>
Date: Sun, 28 Jul 2019 18:03:36 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190722154210.42799-12-steven.price@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_053304_474184_29AA2862 
X-CRM114-Status: GOOD (  22.80  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/22/2019 09:12 PM, Steven Price wrote:
> pgd_entry() and pud_entry() were removed by commit 0b1fbfe50006c410
> ("mm/pagewalk: remove pgd_entry() and pud_entry()") because there were
> no users. We're about to add users so reintroduce them, along with
> p4d_entry() as we now have 5 levels of tables.
> 
> Note that commit a00cc7d9dd93d66a ("mm, x86: add support for
> PUD-sized transparent hugepages") already re-added pud_entry() but with
> different semantics to the other callbacks. Since there have never
> been upstream users of this, revert the semantics back to match the
> other callbacks. This means pud_entry() is called for all entries, not
> just transparent huge pages.
> 
> Signed-off-by: Steven Price <steven.price@arm.com>
> ---
>  include/linux/mm.h | 15 +++++++++------
>  mm/pagewalk.c      | 27 ++++++++++++++++-----------
>  2 files changed, 25 insertions(+), 17 deletions(-)
> 
> diff --git a/include/linux/mm.h b/include/linux/mm.h
> index 0334ca97c584..b22799129128 100644
> --- a/include/linux/mm.h
> +++ b/include/linux/mm.h
> @@ -1432,15 +1432,14 @@ void unmap_vmas(struct mmu_gather *tlb, struct vm_area_struct *start_vma,
>  
>  /**
>   * mm_walk - callbacks for walk_page_range
> - * @pud_entry: if set, called for each non-empty PUD (2nd-level) entry
> - *	       this handler should only handle pud_trans_huge() puds.
> - *	       the pmd_entry or pte_entry callbacks will be used for
> - *	       regular PUDs.
> - * @pmd_entry: if set, called for each non-empty PMD (3rd-level) entry
> + * @pgd_entry: if set, called for each non-empty PGD (top-level) entry
> + * @p4d_entry: if set, called for each non-empty P4D entry
> + * @pud_entry: if set, called for each non-empty PUD entry
> + * @pmd_entry: if set, called for each non-empty PMD entry
>   *	       this handler is required to be able to handle
>   *	       pmd_trans_huge() pmds.  They may simply choose to
>   *	       split_huge_page() instead of handling it explicitly.
> - * @pte_entry: if set, called for each non-empty PTE (4th-level) entry
> + * @pte_entry: if set, called for each non-empty PTE (lowest-level) entry
>   * @pte_hole: if set, called for each hole at all levels
>   * @hugetlb_entry: if set, called for each hugetlb entry
>   * @test_walk: caller specific callback function to determine whether
> @@ -1455,6 +1454,10 @@ void unmap_vmas(struct mmu_gather *tlb, struct vm_area_struct *start_vma,
>   * (see the comment on walk_page_range() for more details)
>   */
>  struct mm_walk {
> +	int (*pgd_entry)(pgd_t *pgd, unsigned long addr,
> +			 unsigned long next, struct mm_walk *walk);
> +	int (*p4d_entry)(p4d_t *p4d, unsigned long addr,
> +			 unsigned long next, struct mm_walk *walk);
>  	int (*pud_entry)(pud_t *pud, unsigned long addr,
>  			 unsigned long next, struct mm_walk *walk);
>  	int (*pmd_entry)(pmd_t *pmd, unsigned long addr,
> diff --git a/mm/pagewalk.c b/mm/pagewalk.c
> index c3084ff2569d..98373a9f88b8 100644
> --- a/mm/pagewalk.c
> +++ b/mm/pagewalk.c
> @@ -90,15 +90,9 @@ static int walk_pud_range(p4d_t *p4d, unsigned long addr, unsigned long end,
>  		}
>  
>  		if (walk->pud_entry) {
> -			spinlock_t *ptl = pud_trans_huge_lock(pud, walk->vma);
> -
> -			if (ptl) {
> -				err = walk->pud_entry(pud, addr, next, walk);
> -				spin_unlock(ptl);
> -				if (err)
> -					break;
> -				continue;
> -			}
> +			err = walk->pud_entry(pud, addr, next, walk);
> +			if (err)
> +				break;

But will not this still encounter possible THP entries when walking user
page tables (valid walk->vma) in which case still needs to get a lock.
OR will the callback take care of it ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
