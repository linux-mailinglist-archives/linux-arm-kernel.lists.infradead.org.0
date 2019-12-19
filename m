Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38972126496
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 15:25:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YFMZBx8PG4aoi5TvhvlHxPasM2Hksi79RZvkNFO5jN8=; b=lGE1TL1Q+6gBSHSLBFjhzBxUS
	0kNRcwvevcNibeH7k8jeYKA89JpxLZBOs2vbWchTRG+Y2pOsr61iRMf8bdEgugP60VFW4gEzXNkkk
	6kzgUAxv17NHrVMh+Si3iHkKF8ZMeQc3YltIkRL8LXxcK/VG1PQobfh+xPjuLsYGtesH62qHWqPO+
	91/vyfw9Lm/JH0RzIwrnlOTIChsZn0XQauWeRw0tSfHNmlFitYq+Nc1BX0J67Ol5m+3+zJjAS8aP/
	SF16+C/Ye7zPanxEeSaA8xE+0jZBJOkYT+uU/F8XMwEWrMJpcJ7qrARSBCdmRwHGDl5Bnz0zDSgvS
	X7J/UrgVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihwkS-0000hE-5n; Thu, 19 Dec 2019 14:25:52 +0000
Received: from pio-pvt-msa3.bahnhof.se ([79.136.2.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihwkH-0000fO-9H
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 14:25:45 +0000
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTP id 0C9223F56D;
 Thu, 19 Dec 2019 15:25:32 +0100 (CET)
Authentication-Results: pio-pvt-msa3.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=YUiCe7Ct; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from pio-pvt-msa3.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa3.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I60xfnlLkZNV; Thu, 19 Dec 2019 15:25:31 +0100 (CET)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTPA id 9E0F03F36C;
 Thu, 19 Dec 2019 15:25:27 +0100 (CET)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id D35AF362181;
 Thu, 19 Dec 2019 15:25:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1576765526; bh=niqHVsFvQhKbn8CvlqAU52ZE2QPl5ayylq2haagZqWQ=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=YUiCe7CtAFE0TCfp9djv5vGSGk9Sv+V5m4ERWopwwABT92Iwake6Va72jfLnHhpSG
 OeZge/ApNXUPtlYHxfrIZput8szSqBNbF2/g4xeOwzx2LKUXL+l9ebhEBiRufQwHp7
 t0SaW0eyHCTcNuHEfaefYbgp57g1/sdk8LbLeEig=
Subject: Re: [PATCH v17 11/23] mm: pagewalk: Add p4d_entry() and pgd_entry()
To: Steven Price <steven.price@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org
References: <20191218162402.45610-1-steven.price@arm.com>
 <20191218162402.45610-12-steven.price@arm.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28VMware=29?= <thomas_os@shipmail.org>
Organization: VMware Inc.
Message-ID: <9ea2f1a2-5ec0-c21c-e725-334b6bf2886d@shipmail.org>
Date: Thu, 19 Dec 2019 15:25:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191218162402.45610-12-steven.price@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_062541_653376_8A53DECD 
X-CRM114-Status: GOOD (  37.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [79.136.2.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org, "Liang,
 Kan" <kan.liang@linux.intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Steven,


On 12/18/19 5:23 PM, Steven Price wrote:
> pgd_entry() and pud_entry() were removed by commit 0b1fbfe50006c410
> ("mm/pagewalk: remove pgd_entry() and pud_entry()") because there were
> no users. We're about to add users so reintroduce them, along with
> p4d_entry() as we now have 5 levels of tables.
>
> Note that commit a00cc7d9dd93d66a ("mm, x86: add support for
> PUD-sized transparent hugepages") already re-added pud_entry() but with
> different semantics to the other callbacks. This commit reverts the
> semantics back to match the other callbacks.
>
> To support hmm.c which now uses the new semantics of pud_entry() a new
> member ('action') of struct mm_walk is added which allows the callbacks
> to either descend (ACTION_SUBTREE, the default), skip (ACTION_CONTINUE)
> or repeat the callback (ACTION_AGAIN). hmm.c is then updated to call
> pud_trans_huge_lock() itself and make use of the splitting/retry logic
> of the core code.
>
> After this change pud_entry() is called for all entries, not just
> transparent huge pages.
>
> Signed-off-by: Steven Price <steven.price@arm.com>

I have a couple of comments that are actually mostly related to 
pre-existing bugs, but that affect code that are touched by this patch.

Perhaps this is most cleanly addressed by a follow-up patch. Up to you 
to decide.

Since these problems are pre-existing,

Reviewed-by: Thomas Hellstrom <thellstrom@vmware.com>

Thanks,

Thomas


> ---
>   include/linux/pagewalk.h | 34 ++++++++++++++++++++-----
>   mm/hmm.c                 | 55 ++++++++++++++++++++++------------------
>   mm/pagewalk.c            | 50 +++++++++++++++++++++++++-----------
>   3 files changed, 94 insertions(+), 45 deletions(-)
>
> diff --git a/include/linux/pagewalk.h b/include/linux/pagewalk.h
> index 6ec82e92c87f..aa6a0b63964e 100644
> --- a/include/linux/pagewalk.h
> +++ b/include/linux/pagewalk.h
> @@ -8,15 +8,15 @@ struct mm_walk;
>   
>   /**
>    * mm_walk_ops - callbacks for walk_page_range
> - * @pud_entry:		if set, called for each non-empty PUD (2nd-level) entry
> - *			this handler should only handle pud_trans_huge() puds.
> - *			the pmd_entry or pte_entry callbacks will be used for
> - *			regular PUDs.
> - * @pmd_entry:		if set, called for each non-empty PMD (3rd-level) entry
> + * @pgd_entry:		if set, called for each non-empty PGD (top-level) entry
> + * @p4d_entry:		if set, called for each non-empty P4D entry
> + * @pud_entry:		if set, called for each non-empty PUD entry
> + * @pmd_entry:		if set, called for each non-empty PMD entry
>    *			this handler is required to be able to handle
>    *			pmd_trans_huge() pmds.  They may simply choose to
>    *			split_huge_page() instead of handling it explicitly.
> - * @pte_entry:		if set, called for each non-empty PTE (4th-level) entry
> + * @pte_entry:		if set, called for each non-empty PTE (lowest-level)
> + *			entry
>    * @pte_hole:		if set, called for each hole at all levels
>    * @hugetlb_entry:	if set, called for each hugetlb entry
>    * @test_walk:		caller specific callback function to determine whether
> @@ -27,8 +27,15 @@ struct mm_walk;
>    * @pre_vma:            if set, called before starting walk on a non-null vma.
>    * @post_vma:           if set, called after a walk on a non-null vma, provided
>    *                      that @pre_vma and the vma walk succeeded.
> + *
> + * p?d_entry callbacks are called even if those levels are folded on a
> + * particular architecture/configuration.
>    */
>   struct mm_walk_ops {
> +	int (*pgd_entry)(pgd_t *pgd, unsigned long addr,
> +			 unsigned long next, struct mm_walk *walk);
> +	int (*p4d_entry)(p4d_t *p4d, unsigned long addr,
> +			 unsigned long next, struct mm_walk *walk);
>   	int (*pud_entry)(pud_t *pud, unsigned long addr,
>   			 unsigned long next, struct mm_walk *walk);
>   	int (*pmd_entry)(pmd_t *pmd, unsigned long addr,
> @@ -47,11 +54,25 @@ struct mm_walk_ops {
>   	void (*post_vma)(struct mm_walk *walk);
>   };
>   
> +/*
> + * Action for pud_entry / pmd_entry callbacks.
> + * ACTION_SUBTREE is the default
> + */
> +enum page_walk_action {
> +	/* Descend to next level, splitting huge pages if needed and possible */
> +	ACTION_SUBTREE = 0,
> +	/* Continue to next entry at this level (ignoring any subtree) */
> +	ACTION_CONTINUE = 1,
> +	/* Call again for this entry */
> +	ACTION_AGAIN = 2
> +};
> +
>   /**
>    * mm_walk - walk_page_range data
>    * @ops:	operation to call during the walk
>    * @mm:		mm_struct representing the target process of page table walk
>    * @vma:	vma currently walked (NULL if walking outside vmas)
> + * @action:	next action to perform (see enum page_walk_action)
>    * @private:	private data for callbacks' usage
>    *
>    * (see the comment on walk_page_range() for more details)
> @@ -60,6 +81,7 @@ struct mm_walk {
>   	const struct mm_walk_ops *ops;
>   	struct mm_struct *mm;
>   	struct vm_area_struct *vma;
> +	enum page_walk_action action;
>   	void *private;
>   };
>   
> diff --git a/mm/hmm.c b/mm/hmm.c
> index d379cb6496ae..05241c82e05c 100644
> --- a/mm/hmm.c
> +++ b/mm/hmm.c
> @@ -477,20 +477,30 @@ static int hmm_vma_walk_pud(pud_t *pudp, unsigned long start, unsigned long end,
>   	unsigned long addr = start, next;
>   	pmd_t *pmdp;
>   	pud_t pud;
> -	int ret;
> +	int ret = 0;
> +	spinlock_t *ptl = pud_trans_huge_lock(pudp, walk->vma);
> +
> +	if (!ptl)
> +		return 0;

Since if we didn't get the PTL here, the pud might be unstable in which 
case we want to retry:

if (!ptl) {
	if (pud_trans_unstable(pudp))
		walk->action = ACTION_AGAIN;
	return 0;
}


> +
> +	/* Normally we don't want to split the huge page */
> +	walk->action = ACTION_CONTINUE;
>   
> -again:
>   	pud = READ_ONCE(*pudp);

We have the lock now, so READ_ONCE could probably be a simple dereference.

> -	if (pud_none(pud))
> -		return hmm_vma_walk_hole(start, end, walk);
> +	if (pud_none(pud)) {
> +		ret = hmm_vma_walk_hole(start, end, walk);
> +		goto out_unlock;
> +	}

pud_trans_huge_lock() successful return means pud_none() is always false.


>   
>   	if (pud_huge(pud) && pud_devmap(pud)) {
>   		unsigned long i, npages, pfn;
>   		uint64_t *pfns, cpu_flags;
>   		bool fault, write_fault;
>   
> -		if (!pud_present(pud))
> -			return hmm_vma_walk_hole(start, end, walk);
> +		if (!pud_present(pud)) {
> +			ret = hmm_vma_walk_hole(start, end, walk);
> +			goto out_unlock;
> +		}

Can't see !pud_present happening either after a succesful 
pud_trans_huge_lock().

>   
>   		i = (addr - range->start) >> PAGE_SHIFT;
>   		npages = (end - addr) >> PAGE_SHIFT;
> @@ -499,16 +509,20 @@ static int hmm_vma_walk_pud(pud_t *pudp, unsigned long start, unsigned long end,
>   		cpu_flags = pud_to_hmm_pfn_flags(range, pud);
>   		hmm_range_need_fault(hmm_vma_walk, pfns, npages,
>   				     cpu_flags, &fault, &write_fault);
> -		if (fault || write_fault)
> -			return hmm_vma_walk_hole_(addr, end, fault,
> -						write_fault, walk);
> +		if (fault || write_fault) {
> +			ret = hmm_vma_walk_hole_(addr, end, fault,
> +						 write_fault, walk);
> +			goto out_unlock;
> +		}
>   
>   		pfn = pud_pfn(pud) + ((addr & ~PUD_MASK) >> PAGE_SHIFT);
>   		for (i = 0; i < npages; ++i, ++pfn) {
>   			hmm_vma_walk->pgmap = get_dev_pagemap(pfn,
>   					      hmm_vma_walk->pgmap);
> -			if (unlikely(!hmm_vma_walk->pgmap))
> -				return -EBUSY;
> +			if (unlikely(!hmm_vma_walk->pgmap)) {
> +				ret = -EBUSY;
> +				goto out_unlock;
> +			}
>   			pfns[i] = hmm_device_entry_from_pfn(range, pfn) |
>   				  cpu_flags;
>   		}
> @@ -517,22 +531,15 @@ static int hmm_vma_walk_pud(pud_t *pudp, unsigned long start, unsigned long end,
>   			hmm_vma_walk->pgmap = NULL;
>   		}
>   		hmm_vma_walk->last = end;
> -		return 0;
> +		goto out_unlock;
>   	}
>   
> -	split_huge_pud(walk->vma, pudp, addr);
> -	if (pud_none(*pudp))
> -		goto again;
> +	/* Ask for the PUD to be split */
> +	walk->action = ACTION_SUBTREE;
>   
> -	pmdp = pmd_offset(pudp, addr);
> -	do {
> -		next = pmd_addr_end(addr, end);
> -		ret = hmm_vma_walk_pmd(pmdp, addr, next, walk);
> -		if (ret)
> -			return ret;
> -	} while (pmdp++, addr = next, addr != end);
> -
> -	return 0;
> +out_unlock:
> +	spin_unlock(ptl);
> +	return ret;
>   }
>   #else
>   #define hmm_vma_walk_pud	NULL
> diff --git a/mm/pagewalk.c b/mm/pagewalk.c
> index ea0b9e606ad1..690af44609e2 100644
> --- a/mm/pagewalk.c
> +++ b/mm/pagewalk.c
> @@ -46,6 +46,9 @@ static int walk_pmd_range(pud_t *pud, unsigned long addr, unsigned long end,
>   				break;
>   			continue;
>   		}
> +
> +		walk->action = ACTION_SUBTREE;
> +
>   		/*
>   		 * This implies that each ->pmd_entry() handler
>   		 * needs to know about pmd_trans_huge() pmds
> @@ -55,16 +58,21 @@ static int walk_pmd_range(pud_t *pud, unsigned long addr, unsigned long end,
>   		if (err)
>   			break;
>   
> +		if (walk->action == ACTION_AGAIN)
> +			goto again;
> +
>   		/*
>   		 * Check this here so we only break down trans_huge
>   		 * pages when we _need_ to
>   		 */
> -		if (!ops->pte_entry)
> +		if (walk->action == ACTION_CONTINUE ||
> +		    !(ops->pte_entry))
>   			continue;
>   
>   		split_huge_pmd(walk->vma, pmd, addr);
>   		if (pmd_trans_unstable(pmd))
>   			goto again;
> +
>   		err = walk_pte_range(pmd, addr, next, walk);
>   		if (err)
>   			break;
> @@ -93,24 +101,25 @@ static int walk_pud_range(p4d_t *p4d, unsigned long addr, unsigned long end,
>   			continue;
>   		}
>   
> -		if (ops->pud_entry) {
> -			spinlock_t *ptl = pud_trans_huge_lock(pud, walk->vma);
> +		walk->action = ACTION_SUBTREE;
>   
> -			if (ptl) {
> -				err = ops->pud_entry(pud, addr, next, walk);
> -				spin_unlock(ptl);
> -				if (err)
> -					break;
> -				continue;
> -			}
> -		}
> +		if (ops->pud_entry)
> +			err = ops->pud_entry(pud, addr, next, walk);
> +		if (err)
> +			break;
> +
> +		if (walk->action == ACTION_AGAIN)
> +			goto again;
> +
> +		if (walk->action == ACTION_CONTINUE ||
> +		    !(ops->pmd_entry || ops->pte_entry))
> +			continue;
>   
>   		split_huge_pud(walk->vma, pud, addr);
>   		if (pud_none(*pud))

Here we should really have

if (pud_trans_unstable(pud))

Thanks,

Thomas



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
