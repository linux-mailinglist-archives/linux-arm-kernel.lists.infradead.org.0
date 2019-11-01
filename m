Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D29EC46F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 15:14:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AnjWU8l3yn5yeOuIn6Zc9rvDSIipDEwDQYl3mAZN+fY=; b=GDcPqiZd67CLj+
	KB042w+X46m8wzVF27/qPM+7ekbabAr5t2KeKh4eJjmzMeysFHTN2Ns2JaNXuUSK9+NaQyprNxvWG
	3iyqlHvocE83uH+g/Bvsn1PW8UIzUhAicFLBXugDXApuTvmSK4TkPTt0YIX4IOGxE/flaqp4z35Of
	dET9kxgrUUNf5hSELavfUACrKsHqI+8Zyk9xsaBXeu81GIQIeIbB99x3ksiU/tGnVyk+GVlVyvgo7
	3QREGGKtAT/EvevpKNqy11tSIXltqj4+OdKCplSgdO3fXqch67dPcyPiQ6SozavxN221P6GipsMWg
	Amu9pnnB+KaRcyd2xUuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQXgg-0003jU-9L; Fri, 01 Nov 2019 14:14:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQXdM-0000gd-9D
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 14:10:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E1C77FA;
 Fri,  1 Nov 2019 07:10:35 -0700 (PDT)
Received: from e112269-lin.cambridge.arm.com (e112269-lin.cambridge.arm.com
 [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 815E03F718;
 Fri,  1 Nov 2019 07:10:32 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: Andrew Morton <akpm@linux-foundation.org>,
	linux-mm@kvack.org
Subject: [PATCH v15 14/23] mm: pagewalk: Add 'depth' parameter to pte_hole
Date: Fri,  1 Nov 2019 14:09:33 +0000
Message-Id: <20191101140942.51554-15-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191101140942.51554-1-steven.price@arm.com>
References: <20191101140942.51554-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_071036_458888_FF7449A0 
X-CRM114-Status: GOOD (  19.02  )
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
 Zong Li <zong.li@sifive.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
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

The pte_hole() callback is called at multiple levels of the page tables.
Code dumping the kernel page tables needs to know what at what depth
the missing entry is. Add this is an extra parameter to pte_hole().
When the depth isn't know (e.g. processing a vma) then -1 is passed.

The depth that is reported is the actual level where the entry is
missing (ignoring any folding that is in place), i.e. any levels where
PTRS_PER_P?D is set to 1 are ignored.

Note that depth starts at 0 for a PGD so that PUD/PMD/PTE retain their
natural numbers as levels 2/3/4.

Tested-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Steven Price <steven.price@arm.com>
---
 fs/proc/task_mmu.c       |  4 ++--
 include/linux/pagewalk.h |  7 +++++--
 mm/hmm.c                 |  8 ++++----
 mm/migrate.c             |  5 +++--
 mm/mincore.c             |  1 +
 mm/pagewalk.c            | 31 +++++++++++++++++++++++++------
 6 files changed, 40 insertions(+), 16 deletions(-)

diff --git a/fs/proc/task_mmu.c b/fs/proc/task_mmu.c
index 9442631fd4af..3ba9ae83bff5 100644
--- a/fs/proc/task_mmu.c
+++ b/fs/proc/task_mmu.c
@@ -505,7 +505,7 @@ static void smaps_account(struct mem_size_stats *mss, struct page *page,
 
 #ifdef CONFIG_SHMEM
 static int smaps_pte_hole(unsigned long addr, unsigned long end,
-		struct mm_walk *walk)
+			  __always_unused int depth, struct mm_walk *walk)
 {
 	struct mem_size_stats *mss = walk->private;
 
@@ -1282,7 +1282,7 @@ static int add_to_pagemap(unsigned long addr, pagemap_entry_t *pme,
 }
 
 static int pagemap_pte_hole(unsigned long start, unsigned long end,
-				struct mm_walk *walk)
+			    __always_unused int depth, struct mm_walk *walk)
 {
 	struct pagemapread *pm = walk->private;
 	unsigned long addr = start;
diff --git a/include/linux/pagewalk.h b/include/linux/pagewalk.h
index fe61448c5900..94c9ad171f1c 100644
--- a/include/linux/pagewalk.h
+++ b/include/linux/pagewalk.h
@@ -17,7 +17,10 @@ struct mm_walk;
  *			split_huge_page() instead of handling it explicitly.
  * @pte_entry:		if set, called for each non-empty PTE (lowest-level)
  *			entry
- * @pte_hole:		if set, called for each hole at all levels
+ * @pte_hole:		if set, called for each hole at all levels,
+ *			depth is -1 if not known, 0:PGD, 1:P4D, 2:PUD, 3:PMD
+ *			4:PTE. Any folded depths (where PTRS_PER_P?D is equal
+ *			to 1) are skipped.
  * @hugetlb_entry:	if set, called for each hugetlb entry
  * @test_walk:		caller specific callback function to determine whether
  *			we walk over the current vma or not. Returning 0 means
@@ -45,7 +48,7 @@ struct mm_walk_ops {
 	int (*pte_entry)(pte_t *pte, unsigned long addr,
 			 unsigned long next, struct mm_walk *walk);
 	int (*pte_hole)(unsigned long addr, unsigned long next,
-			struct mm_walk *walk);
+			int depth, struct mm_walk *walk);
 	int (*hugetlb_entry)(pte_t *pte, unsigned long hmask,
 			     unsigned long addr, unsigned long next,
 			     struct mm_walk *walk);
diff --git a/mm/hmm.c b/mm/hmm.c
index 902f5fa6bf93..df3d531c8f2d 100644
--- a/mm/hmm.c
+++ b/mm/hmm.c
@@ -376,7 +376,7 @@ static void hmm_range_need_fault(const struct hmm_vma_walk *hmm_vma_walk,
 }
 
 static int hmm_vma_walk_hole(unsigned long addr, unsigned long end,
-			     struct mm_walk *walk)
+			     __always_unused int depth, struct mm_walk *walk)
 {
 	struct hmm_vma_walk *hmm_vma_walk = walk->private;
 	struct hmm_range *range = hmm_vma_walk->range;
@@ -564,7 +564,7 @@ static int hmm_vma_walk_pmd(pmd_t *pmdp,
 again:
 	pmd = READ_ONCE(*pmdp);
 	if (pmd_none(pmd))
-		return hmm_vma_walk_hole(start, end, walk);
+		return hmm_vma_walk_hole(start, end, -1, walk);
 
 	if (thp_migration_supported() && is_pmd_migration_entry(pmd)) {
 		bool fault, write_fault;
@@ -666,7 +666,7 @@ static int hmm_vma_walk_pud(pud_t *pudp, unsigned long start, unsigned long end,
 again:
 	pud = READ_ONCE(*pudp);
 	if (pud_none(pud))
-		return hmm_vma_walk_hole(start, end, walk);
+		return hmm_vma_walk_hole(start, end, -1, walk);
 
 	if (pud_huge(pud) && pud_devmap(pud)) {
 		unsigned long i, npages, pfn;
@@ -674,7 +674,7 @@ static int hmm_vma_walk_pud(pud_t *pudp, unsigned long start, unsigned long end,
 		bool fault, write_fault;
 
 		if (!pud_present(pud))
-			return hmm_vma_walk_hole(start, end, walk);
+			return hmm_vma_walk_hole(start, end, -1, walk);
 
 		i = (addr - range->start) >> PAGE_SHIFT;
 		npages = (end - addr) >> PAGE_SHIFT;
diff --git a/mm/migrate.c b/mm/migrate.c
index 4fe45d1428c8..435258df9a36 100644
--- a/mm/migrate.c
+++ b/mm/migrate.c
@@ -2123,6 +2123,7 @@ int migrate_misplaced_transhuge_page(struct mm_struct *mm,
 #ifdef CONFIG_DEVICE_PRIVATE
 static int migrate_vma_collect_hole(unsigned long start,
 				    unsigned long end,
+				    __always_unused int depth,
 				    struct mm_walk *walk)
 {
 	struct migrate_vma *migrate = walk->private;
@@ -2167,7 +2168,7 @@ static int migrate_vma_collect_pmd(pmd_t *pmdp,
 
 again:
 	if (pmd_none(*pmdp))
-		return migrate_vma_collect_hole(start, end, walk);
+		return migrate_vma_collect_hole(start, end, -1, walk);
 
 	if (pmd_trans_huge(*pmdp)) {
 		struct page *page;
@@ -2200,7 +2201,7 @@ static int migrate_vma_collect_pmd(pmd_t *pmdp,
 				return migrate_vma_collect_skip(start, end,
 								walk);
 			if (pmd_none(*pmdp))
-				return migrate_vma_collect_hole(start, end,
+				return migrate_vma_collect_hole(start, end, -1,
 								walk);
 		}
 	}
diff --git a/mm/mincore.c b/mm/mincore.c
index 49b6fa2f6aa1..0e6dd9948f1a 100644
--- a/mm/mincore.c
+++ b/mm/mincore.c
@@ -112,6 +112,7 @@ static int __mincore_unmapped_range(unsigned long addr, unsigned long end,
 }
 
 static int mincore_unmapped_range(unsigned long addr, unsigned long end,
+				   __always_unused int depth,
 				   struct mm_walk *walk)
 {
 	walk->private += __mincore_unmapped_range(addr, end,
diff --git a/mm/pagewalk.c b/mm/pagewalk.c
index 4616281f5b69..c7529dc4f82b 100644
--- a/mm/pagewalk.c
+++ b/mm/pagewalk.c
@@ -4,6 +4,22 @@
 #include <linux/sched.h>
 #include <linux/hugetlb.h>
 
+/*
+ * We want to know the real level where a entry is located ignoring any
+ * folding of levels which may be happening. For example if p4d is folded then
+ * a missing entry found at level 1 (p4d) is actually at level 0 (pgd).
+ */
+static int real_depth(int depth)
+{
+	if (depth == 3 && PTRS_PER_PMD == 1)
+		depth = 2;
+	if (depth == 2 && PTRS_PER_PUD == 1)
+		depth = 1;
+	if (depth == 1 && PTRS_PER_P4D == 1)
+		depth = 0;
+	return depth;
+}
+
 static int walk_pte_range(pmd_t *pmd, unsigned long addr, unsigned long end,
 			  struct mm_walk *walk)
 {
@@ -33,6 +49,7 @@ static int walk_pmd_range(pud_t *pud, unsigned long addr, unsigned long end,
 	unsigned long next;
 	const struct mm_walk_ops *ops = walk->ops;
 	int err = 0;
+	int depth = real_depth(3);
 
 	if (ops->test_pmd) {
 		err = ops->test_pmd(addr, end, pmd_offset(pud, 0UL), walk);
@@ -48,7 +65,7 @@ static int walk_pmd_range(pud_t *pud, unsigned long addr, unsigned long end,
 		next = pmd_addr_end(addr, end);
 		if (pmd_none(*pmd) || (!walk->vma && !walk->no_vma)) {
 			if (ops->pte_hole)
-				err = ops->pte_hole(addr, next, walk);
+				err = ops->pte_hole(addr, next, depth, walk);
 			if (err)
 				break;
 			continue;
@@ -92,6 +109,7 @@ static int walk_pud_range(p4d_t *p4d, unsigned long addr, unsigned long end,
 	unsigned long next;
 	const struct mm_walk_ops *ops = walk->ops;
 	int err = 0;
+	int depth = real_depth(2);
 
 	if (ops->test_pud) {
 		err = ops->test_pud(addr, end, pud_offset(p4d, 0UL), walk);
@@ -107,7 +125,7 @@ static int walk_pud_range(p4d_t *p4d, unsigned long addr, unsigned long end,
 		next = pud_addr_end(addr, end);
 		if (pud_none(*pud) || (!walk->vma && !walk->no_vma)) {
 			if (ops->pte_hole)
-				err = ops->pte_hole(addr, next, walk);
+				err = ops->pte_hole(addr, next, depth, walk);
 			if (err)
 				break;
 			continue;
@@ -143,6 +161,7 @@ static int walk_p4d_range(pgd_t *pgd, unsigned long addr, unsigned long end,
 	unsigned long next;
 	const struct mm_walk_ops *ops = walk->ops;
 	int err = 0;
+	int depth = real_depth(1);
 
 	if (ops->test_p4d) {
 		err = ops->test_p4d(addr, end, p4d_offset(pgd, 0UL), walk);
@@ -157,7 +176,7 @@ static int walk_p4d_range(pgd_t *pgd, unsigned long addr, unsigned long end,
 		next = p4d_addr_end(addr, end);
 		if (p4d_none_or_clear_bad(p4d)) {
 			if (ops->pte_hole)
-				err = ops->pte_hole(addr, next, walk);
+				err = ops->pte_hole(addr, next, depth, walk);
 			if (err)
 				break;
 			continue;
@@ -189,7 +208,7 @@ static int walk_pgd_range(unsigned long addr, unsigned long end,
 		next = pgd_addr_end(addr, end);
 		if (pgd_none_or_clear_bad(pgd)) {
 			if (ops->pte_hole)
-				err = ops->pte_hole(addr, next, walk);
+				err = ops->pte_hole(addr, next, 0, walk);
 			if (err)
 				break;
 			continue;
@@ -236,7 +255,7 @@ static int walk_hugetlb_range(unsigned long addr, unsigned long end,
 		if (pte)
 			err = ops->hugetlb_entry(pte, hmask, addr, next, walk);
 		else if (ops->pte_hole)
-			err = ops->pte_hole(addr, next, walk);
+			err = ops->pte_hole(addr, next, -1, walk);
 
 		if (err)
 			break;
@@ -280,7 +299,7 @@ static int walk_page_test(unsigned long start, unsigned long end,
 	if (vma->vm_flags & VM_PFNMAP) {
 		int err = 1;
 		if (ops->pte_hole)
-			err = ops->pte_hole(start, end, walk);
+			err = ops->pte_hole(start, end, -1, walk);
 		return err ? err : 1;
 	}
 	return 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
