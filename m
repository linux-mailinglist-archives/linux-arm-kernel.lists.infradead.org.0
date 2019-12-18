Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A528124DA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:32:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s4YGS4Lrt8iL5GICsP7hP6Fb5t56EvMLaeAVsrEC34g=; b=dzt8R5pID1QArG
	Whad0Tak78kfJVzBp9+Hc98OluQpfTLRkdHKvVi1tQz2c7lyZdhjAs+SSiqL5ZYXVP5omcLnOXCNh
	r7ZempxXDqC8oWMcm42h4rLcV7TqAFqK7mZSvcpwFnUX8hxRN29CZfx93e9hITtHPoUMv7bsKIiv4
	oTbBhc+p/4M+cfkfoGRiPcvV5XGN9RD24alYyb0b6ZR82WyLSL5ueAiQ/E2alzfVRKCUm3o6d+GuF
	afNJF0dJWiYvIDa3vlhNyEAL4qT8o2PntWaZpuWLA49ziD2E+ef2vwBq0ne12aShQFJAHeO+/nSsS
	vW4abHZajXfSFq9rtaQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcEx-0006lD-M9; Wed, 18 Dec 2019 16:31:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihc89-0007PE-QK
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:25:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5113430E;
 Wed, 18 Dec 2019 08:24:57 -0800 (PST)
Received: from e112269-lin.arm.com (e112269-lin.cambridge.arm.com
 [10.1.196.56])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A92CC3F719;
 Wed, 18 Dec 2019 08:24:54 -0800 (PST)
From: Steven Price <steven.price@arm.com>
To: Andrew Morton <akpm@linux-foundation.org>,
	linux-mm@kvack.org
Subject: [PATCH v17 11/23] mm: pagewalk: Add p4d_entry() and pgd_entry()
Date: Wed, 18 Dec 2019 16:23:50 +0000
Message-Id: <20191218162402.45610-12-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191218162402.45610-1-steven.price@arm.com>
References: <20191218162402.45610-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_082458_089799_6095C310 
X-CRM114-Status: GOOD (  22.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
 Steven Price <steven.price@arm.com>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org, "Liang,
 Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

pgd_entry() and pud_entry() were removed by commit 0b1fbfe50006c410
("mm/pagewalk: remove pgd_entry() and pud_entry()") because there were
no users. We're about to add users so reintroduce them, along with
p4d_entry() as we now have 5 levels of tables.

Note that commit a00cc7d9dd93d66a ("mm, x86: add support for
PUD-sized transparent hugepages") already re-added pud_entry() but with
different semantics to the other callbacks. This commit reverts the
semantics back to match the other callbacks.

To support hmm.c which now uses the new semantics of pud_entry() a new
member ('action') of struct mm_walk is added which allows the callbacks
to either descend (ACTION_SUBTREE, the default), skip (ACTION_CONTINUE)
or repeat the callback (ACTION_AGAIN). hmm.c is then updated to call
pud_trans_huge_lock() itself and make use of the splitting/retry logic
of the core code.

After this change pud_entry() is called for all entries, not just
transparent huge pages.

Signed-off-by: Steven Price <steven.price@arm.com>
---
 include/linux/pagewalk.h | 34 ++++++++++++++++++++-----
 mm/hmm.c                 | 55 ++++++++++++++++++++++------------------
 mm/pagewalk.c            | 50 +++++++++++++++++++++++++-----------
 3 files changed, 94 insertions(+), 45 deletions(-)

diff --git a/include/linux/pagewalk.h b/include/linux/pagewalk.h
index 6ec82e92c87f..aa6a0b63964e 100644
--- a/include/linux/pagewalk.h
+++ b/include/linux/pagewalk.h
@@ -8,15 +8,15 @@ struct mm_walk;
 
 /**
  * mm_walk_ops - callbacks for walk_page_range
- * @pud_entry:		if set, called for each non-empty PUD (2nd-level) entry
- *			this handler should only handle pud_trans_huge() puds.
- *			the pmd_entry or pte_entry callbacks will be used for
- *			regular PUDs.
- * @pmd_entry:		if set, called for each non-empty PMD (3rd-level) entry
+ * @pgd_entry:		if set, called for each non-empty PGD (top-level) entry
+ * @p4d_entry:		if set, called for each non-empty P4D entry
+ * @pud_entry:		if set, called for each non-empty PUD entry
+ * @pmd_entry:		if set, called for each non-empty PMD entry
  *			this handler is required to be able to handle
  *			pmd_trans_huge() pmds.  They may simply choose to
  *			split_huge_page() instead of handling it explicitly.
- * @pte_entry:		if set, called for each non-empty PTE (4th-level) entry
+ * @pte_entry:		if set, called for each non-empty PTE (lowest-level)
+ *			entry
  * @pte_hole:		if set, called for each hole at all levels
  * @hugetlb_entry:	if set, called for each hugetlb entry
  * @test_walk:		caller specific callback function to determine whether
@@ -27,8 +27,15 @@ struct mm_walk;
  * @pre_vma:            if set, called before starting walk on a non-null vma.
  * @post_vma:           if set, called after a walk on a non-null vma, provided
  *                      that @pre_vma and the vma walk succeeded.
+ *
+ * p?d_entry callbacks are called even if those levels are folded on a
+ * particular architecture/configuration.
  */
 struct mm_walk_ops {
+	int (*pgd_entry)(pgd_t *pgd, unsigned long addr,
+			 unsigned long next, struct mm_walk *walk);
+	int (*p4d_entry)(p4d_t *p4d, unsigned long addr,
+			 unsigned long next, struct mm_walk *walk);
 	int (*pud_entry)(pud_t *pud, unsigned long addr,
 			 unsigned long next, struct mm_walk *walk);
 	int (*pmd_entry)(pmd_t *pmd, unsigned long addr,
@@ -47,11 +54,25 @@ struct mm_walk_ops {
 	void (*post_vma)(struct mm_walk *walk);
 };
 
+/*
+ * Action for pud_entry / pmd_entry callbacks.
+ * ACTION_SUBTREE is the default
+ */
+enum page_walk_action {
+	/* Descend to next level, splitting huge pages if needed and possible */
+	ACTION_SUBTREE = 0,
+	/* Continue to next entry at this level (ignoring any subtree) */
+	ACTION_CONTINUE = 1,
+	/* Call again for this entry */
+	ACTION_AGAIN = 2
+};
+
 /**
  * mm_walk - walk_page_range data
  * @ops:	operation to call during the walk
  * @mm:		mm_struct representing the target process of page table walk
  * @vma:	vma currently walked (NULL if walking outside vmas)
+ * @action:	next action to perform (see enum page_walk_action)
  * @private:	private data for callbacks' usage
  *
  * (see the comment on walk_page_range() for more details)
@@ -60,6 +81,7 @@ struct mm_walk {
 	const struct mm_walk_ops *ops;
 	struct mm_struct *mm;
 	struct vm_area_struct *vma;
+	enum page_walk_action action;
 	void *private;
 };
 
diff --git a/mm/hmm.c b/mm/hmm.c
index d379cb6496ae..05241c82e05c 100644
--- a/mm/hmm.c
+++ b/mm/hmm.c
@@ -477,20 +477,30 @@ static int hmm_vma_walk_pud(pud_t *pudp, unsigned long start, unsigned long end,
 	unsigned long addr = start, next;
 	pmd_t *pmdp;
 	pud_t pud;
-	int ret;
+	int ret = 0;
+	spinlock_t *ptl = pud_trans_huge_lock(pudp, walk->vma);
+
+	if (!ptl)
+		return 0;
+
+	/* Normally we don't want to split the huge page */
+	walk->action = ACTION_CONTINUE;
 
-again:
 	pud = READ_ONCE(*pudp);
-	if (pud_none(pud))
-		return hmm_vma_walk_hole(start, end, walk);
+	if (pud_none(pud)) {
+		ret = hmm_vma_walk_hole(start, end, walk);
+		goto out_unlock;
+	}
 
 	if (pud_huge(pud) && pud_devmap(pud)) {
 		unsigned long i, npages, pfn;
 		uint64_t *pfns, cpu_flags;
 		bool fault, write_fault;
 
-		if (!pud_present(pud))
-			return hmm_vma_walk_hole(start, end, walk);
+		if (!pud_present(pud)) {
+			ret = hmm_vma_walk_hole(start, end, walk);
+			goto out_unlock;
+		}
 
 		i = (addr - range->start) >> PAGE_SHIFT;
 		npages = (end - addr) >> PAGE_SHIFT;
@@ -499,16 +509,20 @@ static int hmm_vma_walk_pud(pud_t *pudp, unsigned long start, unsigned long end,
 		cpu_flags = pud_to_hmm_pfn_flags(range, pud);
 		hmm_range_need_fault(hmm_vma_walk, pfns, npages,
 				     cpu_flags, &fault, &write_fault);
-		if (fault || write_fault)
-			return hmm_vma_walk_hole_(addr, end, fault,
-						write_fault, walk);
+		if (fault || write_fault) {
+			ret = hmm_vma_walk_hole_(addr, end, fault,
+						 write_fault, walk);
+			goto out_unlock;
+		}
 
 		pfn = pud_pfn(pud) + ((addr & ~PUD_MASK) >> PAGE_SHIFT);
 		for (i = 0; i < npages; ++i, ++pfn) {
 			hmm_vma_walk->pgmap = get_dev_pagemap(pfn,
 					      hmm_vma_walk->pgmap);
-			if (unlikely(!hmm_vma_walk->pgmap))
-				return -EBUSY;
+			if (unlikely(!hmm_vma_walk->pgmap)) {
+				ret = -EBUSY;
+				goto out_unlock;
+			}
 			pfns[i] = hmm_device_entry_from_pfn(range, pfn) |
 				  cpu_flags;
 		}
@@ -517,22 +531,15 @@ static int hmm_vma_walk_pud(pud_t *pudp, unsigned long start, unsigned long end,
 			hmm_vma_walk->pgmap = NULL;
 		}
 		hmm_vma_walk->last = end;
-		return 0;
+		goto out_unlock;
 	}
 
-	split_huge_pud(walk->vma, pudp, addr);
-	if (pud_none(*pudp))
-		goto again;
+	/* Ask for the PUD to be split */
+	walk->action = ACTION_SUBTREE;
 
-	pmdp = pmd_offset(pudp, addr);
-	do {
-		next = pmd_addr_end(addr, end);
-		ret = hmm_vma_walk_pmd(pmdp, addr, next, walk);
-		if (ret)
-			return ret;
-	} while (pmdp++, addr = next, addr != end);
-
-	return 0;
+out_unlock:
+	spin_unlock(ptl);
+	return ret;
 }
 #else
 #define hmm_vma_walk_pud	NULL
diff --git a/mm/pagewalk.c b/mm/pagewalk.c
index ea0b9e606ad1..690af44609e2 100644
--- a/mm/pagewalk.c
+++ b/mm/pagewalk.c
@@ -46,6 +46,9 @@ static int walk_pmd_range(pud_t *pud, unsigned long addr, unsigned long end,
 				break;
 			continue;
 		}
+
+		walk->action = ACTION_SUBTREE;
+
 		/*
 		 * This implies that each ->pmd_entry() handler
 		 * needs to know about pmd_trans_huge() pmds
@@ -55,16 +58,21 @@ static int walk_pmd_range(pud_t *pud, unsigned long addr, unsigned long end,
 		if (err)
 			break;
 
+		if (walk->action == ACTION_AGAIN)
+			goto again;
+
 		/*
 		 * Check this here so we only break down trans_huge
 		 * pages when we _need_ to
 		 */
-		if (!ops->pte_entry)
+		if (walk->action == ACTION_CONTINUE ||
+		    !(ops->pte_entry))
 			continue;
 
 		split_huge_pmd(walk->vma, pmd, addr);
 		if (pmd_trans_unstable(pmd))
 			goto again;
+
 		err = walk_pte_range(pmd, addr, next, walk);
 		if (err)
 			break;
@@ -93,24 +101,25 @@ static int walk_pud_range(p4d_t *p4d, unsigned long addr, unsigned long end,
 			continue;
 		}
 
-		if (ops->pud_entry) {
-			spinlock_t *ptl = pud_trans_huge_lock(pud, walk->vma);
+		walk->action = ACTION_SUBTREE;
 
-			if (ptl) {
-				err = ops->pud_entry(pud, addr, next, walk);
-				spin_unlock(ptl);
-				if (err)
-					break;
-				continue;
-			}
-		}
+		if (ops->pud_entry)
+			err = ops->pud_entry(pud, addr, next, walk);
+		if (err)
+			break;
+
+		if (walk->action == ACTION_AGAIN)
+			goto again;
+
+		if (walk->action == ACTION_CONTINUE ||
+		    !(ops->pmd_entry || ops->pte_entry))
+			continue;
 
 		split_huge_pud(walk->vma, pud, addr);
 		if (pud_none(*pud))
 			goto again;
 
-		if (ops->pmd_entry || ops->pte_entry)
-			err = walk_pmd_range(pud, addr, next, walk);
+		err = walk_pmd_range(pud, addr, next, walk);
 		if (err)
 			break;
 	} while (pud++, addr = next, addr != end);
@@ -136,7 +145,12 @@ static int walk_p4d_range(pgd_t *pgd, unsigned long addr, unsigned long end,
 				break;
 			continue;
 		}
-		if (ops->pmd_entry || ops->pte_entry)
+		if (ops->p4d_entry) {
+			err = ops->p4d_entry(p4d, addr, next, walk);
+			if (err)
+				break;
+		}
+		if (ops->pud_entry || ops->pmd_entry || ops->pte_entry)
 			err = walk_pud_range(p4d, addr, next, walk);
 		if (err)
 			break;
@@ -163,7 +177,13 @@ static int walk_pgd_range(unsigned long addr, unsigned long end,
 				break;
 			continue;
 		}
-		if (ops->pmd_entry || ops->pte_entry)
+		if (ops->pgd_entry) {
+			err = ops->pgd_entry(pgd, addr, next, walk);
+			if (err)
+				break;
+		}
+		if (ops->p4d_entry || ops->pud_entry || ops->pmd_entry ||
+		    ops->pte_entry)
 			err = walk_p4d_range(pgd, addr, next, walk);
 		if (err)
 			break;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
