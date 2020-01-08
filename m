Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C28E134579
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 15:57:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NmXgtE5nCG+SD+Srf/13kvYSPJFld6U7KjbjuFrNjl0=; b=Epr9fomMHcX1Fq
	MbV2QjmqmAi2xr4DWu1Bk6Nl6NRxEfF5CA5xwmJUhTI4bGfdxYAj5/erzV4fvn8zvbPv0LSgk5FYY
	ne8mp2xAxXVy3bicYLMe7bQVCPbFrOFIm3EMdR/Yu5te9dgwhKXsQSnR3h2HlaqhjPl2WzAhHuXV6
	6Qy7I2HCbu2F8cc6gzpAzcQTDtRkszk3b+dsSPuOx+tZDNt0bEG/82wOVVYfPg8p/G9cqB+QW5XAZ
	MALNT4ama6vIqLYOap7dkI2ddQOwCdWqR5HfyFH8KyAIQ4zcvoosjGzkcSsaBlrb4wH0kD1CtM0Ok
	GmyEgzgeFTTIdBtRg8kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipCm1-0004cC-LV; Wed, 08 Jan 2020 14:57:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipCls-0004ab-FR
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 14:57:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 08D7531B;
 Wed,  8 Jan 2020 06:57:18 -0800 (PST)
Received: from e112269-lin.cambridge.arm.com (e112269-lin.cambridge.arm.com
 [10.1.194.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E1BE13F703;
 Wed,  8 Jan 2020 06:57:16 -0800 (PST)
From: Steven Price <steven.price@arm.com>
To: Andrew Morton <akpm@linux-foundation.org>,
	x86@kernel.org
Subject: [PATCH] x86: mm: Avoid allocating struct mm_struct on the stack
Date: Wed,  8 Jan 2020 14:57:10 +0000
Message-Id: <20200108145710.34314-1-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200108145248.GA2584@arm.com>
References: <20200108145248.GA2584@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_065720_612329_3EF54FF3 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Price <steven.price@arm.com>, linux-mm@kvack.org,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

struct mm_struct is quite large (~1664 bytes) and so allocating on the
stack may cause problems as the kernel stack size is small.

Since ptdump_walk_pgd_level_core() was only allocating the structure so
that it could modify the pgd argument we can instead introduce a pgd
override in struct mm_walk and pass this down the call stack to where it
is needed.

Since the correct mm_struct is now being passed down, it is now also
unnecessary to take the mmap_sem semaphore because ptdump_walk_pgd()
will now take the semaphore on the real mm.

Signed-off-by: Steven Price <steven.price@arm.com>
---
 arch/arm64/mm/dump.c           |  4 ++--
 arch/x86/mm/debug_pagetables.c | 10 ++--------
 arch/x86/mm/dump_pagetables.c  | 18 +++++++-----------
 include/linux/pagewalk.h       |  3 +++
 include/linux/ptdump.h         |  2 +-
 mm/pagewalk.c                  |  7 ++++++-
 mm/ptdump.c                    |  4 ++--
 7 files changed, 23 insertions(+), 25 deletions(-)

diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
index ef4b3ca1e058..860c00ec8bd3 100644
--- a/arch/arm64/mm/dump.c
+++ b/arch/arm64/mm/dump.c
@@ -323,7 +323,7 @@ void ptdump_walk(struct seq_file *s, struct ptdump_info *info)
 		}
 	};
 
-	ptdump_walk_pgd(&st.ptdump, info->mm);
+	ptdump_walk_pgd(&st.ptdump, info->mm, NULL);
 }
 
 static void ptdump_initialize(void)
@@ -361,7 +361,7 @@ void ptdump_check_wx(void)
 		}
 	};
 
-	ptdump_walk_pgd(&st.ptdump, &init_mm);
+	ptdump_walk_pgd(&st.ptdump, &init_mm, NULL);
 
 	if (st.wx_pages || st.uxn_pages)
 		pr_warn("Checked W+X mappings: FAILED, %lu W+X pages found, %lu non-UXN pages found\n",
diff --git a/arch/x86/mm/debug_pagetables.c b/arch/x86/mm/debug_pagetables.c
index d0efec713c6c..4a3b62f780b4 100644
--- a/arch/x86/mm/debug_pagetables.c
+++ b/arch/x86/mm/debug_pagetables.c
@@ -15,11 +15,8 @@ DEFINE_SHOW_ATTRIBUTE(ptdump);
 
 static int ptdump_curknl_show(struct seq_file *m, void *v)
 {
-	if (current->mm->pgd) {
-		down_read(&current->mm->mmap_sem);
+	if (current->mm->pgd)
 		ptdump_walk_pgd_level_debugfs(m, current->mm, false);
-		up_read(&current->mm->mmap_sem);
-	}
 	return 0;
 }
 
@@ -28,11 +25,8 @@ DEFINE_SHOW_ATTRIBUTE(ptdump_curknl);
 #ifdef CONFIG_PAGE_TABLE_ISOLATION
 static int ptdump_curusr_show(struct seq_file *m, void *v)
 {
-	if (current->mm->pgd) {
-		down_read(&current->mm->mmap_sem);
+	if (current->mm->pgd)
 		ptdump_walk_pgd_level_debugfs(m, current->mm, true);
-		up_read(&current->mm->mmap_sem);
-	}
 	return 0;
 }
 
diff --git a/arch/x86/mm/dump_pagetables.c b/arch/x86/mm/dump_pagetables.c
index 411f6a758998..64229dad7eab 100644
--- a/arch/x86/mm/dump_pagetables.c
+++ b/arch/x86/mm/dump_pagetables.c
@@ -357,7 +357,8 @@ static void note_page(struct ptdump_state *pt_st, unsigned long addr, int level,
 	}
 }
 
-static void ptdump_walk_pgd_level_core(struct seq_file *m, pgd_t *pgd,
+static void ptdump_walk_pgd_level_core(struct seq_file *m,
+				       struct mm_struct *mm, pgd_t *pgd,
 				       bool checkwx, bool dmesg)
 {
 	const struct ptdump_range ptdump_ranges[] = {
@@ -386,12 +387,7 @@ static void ptdump_walk_pgd_level_core(struct seq_file *m, pgd_t *pgd,
 		.seq		= m
 	};
 
-	struct mm_struct fake_mm = {
-		.pgd = pgd
-	};
-	init_rwsem(&fake_mm.mmap_sem);
-
-	ptdump_walk_pgd(&st.ptdump, &fake_mm);
+	ptdump_walk_pgd(&st.ptdump, mm, pgd);
 
 	if (!checkwx)
 		return;
@@ -404,7 +400,7 @@ static void ptdump_walk_pgd_level_core(struct seq_file *m, pgd_t *pgd,
 
 void ptdump_walk_pgd_level(struct seq_file *m, struct mm_struct *mm)
 {
-	ptdump_walk_pgd_level_core(m, mm->pgd, false, true);
+	ptdump_walk_pgd_level_core(m, mm, mm->pgd, false, true);
 }
 
 void ptdump_walk_pgd_level_debugfs(struct seq_file *m, struct mm_struct *mm,
@@ -415,7 +411,7 @@ void ptdump_walk_pgd_level_debugfs(struct seq_file *m, struct mm_struct *mm,
 	if (user && boot_cpu_has(X86_FEATURE_PTI))
 		pgd = kernel_to_user_pgdp(pgd);
 #endif
-	ptdump_walk_pgd_level_core(m, pgd, false, false);
+	ptdump_walk_pgd_level_core(m, mm, pgd, false, false);
 }
 EXPORT_SYMBOL_GPL(ptdump_walk_pgd_level_debugfs);
 
@@ -430,13 +426,13 @@ void ptdump_walk_user_pgd_level_checkwx(void)
 
 	pr_info("x86/mm: Checking user space page tables\n");
 	pgd = kernel_to_user_pgdp(pgd);
-	ptdump_walk_pgd_level_core(NULL, pgd, true, false);
+	ptdump_walk_pgd_level_core(NULL, &init_mm, pgd, true, false);
 #endif
 }
 
 void ptdump_walk_pgd_level_checkwx(void)
 {
-	ptdump_walk_pgd_level_core(NULL, INIT_PGD, true, false);
+	ptdump_walk_pgd_level_core(NULL, &init_mm, INIT_PGD, true, false);
 }
 
 static int __init pt_dump_init(void)
diff --git a/include/linux/pagewalk.h b/include/linux/pagewalk.h
index 745a654c6ea7..b1cb6b753abb 100644
--- a/include/linux/pagewalk.h
+++ b/include/linux/pagewalk.h
@@ -74,6 +74,7 @@ enum page_walk_action {
  * mm_walk - walk_page_range data
  * @ops:	operation to call during the walk
  * @mm:		mm_struct representing the target process of page table walk
+ * @pgd:	pointer to PGD; only valid with no_vma (otherwise set to NULL)
  * @vma:	vma currently walked (NULL if walking outside vmas)
  * @action:	next action to perform (see enum page_walk_action)
  * @no_vma:	walk ignoring vmas (vma will always be NULL)
@@ -84,6 +85,7 @@ enum page_walk_action {
 struct mm_walk {
 	const struct mm_walk_ops *ops;
 	struct mm_struct *mm;
+	pgd_t *pgd;
 	struct vm_area_struct *vma;
 	enum page_walk_action action;
 	bool no_vma;
@@ -95,6 +97,7 @@ int walk_page_range(struct mm_struct *mm, unsigned long start,
 		void *private);
 int walk_page_range_novma(struct mm_struct *mm, unsigned long start,
 			  unsigned long end, const struct mm_walk_ops *ops,
+			  pgd_t *pgd,
 			  void *private);
 int walk_page_vma(struct vm_area_struct *vma, const struct mm_walk_ops *ops,
 		void *private);
diff --git a/include/linux/ptdump.h b/include/linux/ptdump.h
index b28f3f2acf90..a67065c403c3 100644
--- a/include/linux/ptdump.h
+++ b/include/linux/ptdump.h
@@ -17,6 +17,6 @@ struct ptdump_state {
 	const struct ptdump_range *range;
 };
 
-void ptdump_walk_pgd(struct ptdump_state *st, struct mm_struct *mm);
+void ptdump_walk_pgd(struct ptdump_state *st, struct mm_struct *mm, pgd_t *pgd);
 
 #endif /* _LINUX_PTDUMP_H */
diff --git a/mm/pagewalk.c b/mm/pagewalk.c
index 5895ce4f1a85..928df1638c30 100644
--- a/mm/pagewalk.c
+++ b/mm/pagewalk.c
@@ -206,7 +206,10 @@ static int walk_pgd_range(unsigned long addr, unsigned long end,
 	const struct mm_walk_ops *ops = walk->ops;
 	int err = 0;
 
-	pgd = pgd_offset(walk->mm, addr);
+	if (walk->pgd)
+		pgd = walk->pgd + pgd_index(addr);
+	else
+		pgd = pgd_offset(walk->mm, addr);
 	do {
 		next = pgd_addr_end(addr, end);
 		if (pgd_none_or_clear_bad(pgd)) {
@@ -436,11 +439,13 @@ int walk_page_range(struct mm_struct *mm, unsigned long start,
  */
 int walk_page_range_novma(struct mm_struct *mm, unsigned long start,
 			  unsigned long end, const struct mm_walk_ops *ops,
+			  pgd_t *pgd,
 			  void *private)
 {
 	struct mm_walk walk = {
 		.ops		= ops,
 		.mm		= mm,
+		.pgd		= pgd,
 		.private	= private,
 		.no_vma		= true
 	};
diff --git a/mm/ptdump.c b/mm/ptdump.c
index ad18a9839d6f..26208d0d03b7 100644
--- a/mm/ptdump.c
+++ b/mm/ptdump.c
@@ -122,14 +122,14 @@ static const struct mm_walk_ops ptdump_ops = {
 	.pte_hole	= ptdump_hole,
 };
 
-void ptdump_walk_pgd(struct ptdump_state *st, struct mm_struct *mm)
+void ptdump_walk_pgd(struct ptdump_state *st, struct mm_struct *mm, pgd_t *pgd)
 {
 	const struct ptdump_range *range = st->range;
 
 	down_read(&mm->mmap_sem);
 	while (range->start != range->end) {
 		walk_page_range_novma(mm, range->start, range->end,
-				      &ptdump_ops, st);
+				      &ptdump_ops, pgd, st);
 		range++;
 	}
 	up_read(&mm->mmap_sem);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
