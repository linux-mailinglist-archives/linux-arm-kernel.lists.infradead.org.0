Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D47EC46C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 15:13:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mdaBhm7d/lG7dDfdykPJQMfTH4ypr8M1b80/5b0Md10=; b=h0S3h2eHuI6QvY
	PIHjsgKJk0lPEeAxFi4phLcYEkxKD+Bjl/LUKfCBPf9In6svO0QKB9LSekWeRzsKeGM4En9jOJe41
	wUa6Ug/U4qGXz4lJx1D0EBcCK+mAkCwhK36++Zrp8Odq/6mSAcnGFMW/KxgKGG4ZM5nx3uLoTdGZQ
	x0nN6tpueyOMCbFdeEuaH7IKQ6HERjYG/MCHEKO+Ls5SMAyf4IM8vWR12myt5EKamwvNfWF/fdF53
	tmxvQOf1fzD4aW581RkPvgGKw6YyPMevi90p2nD5Km53/4EG2veQ2axYoj4ULNCvhwMiiazb+Zid7
	k+8XHD0fGdh0CpBwMZyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQXfr-0002yI-Qi; Fri, 01 Nov 2019 14:13:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQXdD-0000Xl-CG
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 14:10:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 831BB7A7;
 Fri,  1 Nov 2019 07:10:26 -0700 (PDT)
Received: from e112269-lin.cambridge.arm.com (e112269-lin.cambridge.arm.com
 [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D1A263F718;
 Fri,  1 Nov 2019 07:10:23 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: Andrew Morton <akpm@linux-foundation.org>,
	linux-mm@kvack.org
Subject: [PATCH v15 11/23] mm: pagewalk: Add p4d_entry() and pgd_entry()
Date: Fri,  1 Nov 2019 14:09:30 +0000
Message-Id: <20191101140942.51554-12-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191101140942.51554-1-steven.price@arm.com>
References: <20191101140942.51554-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_071027_553170_5AF36D6E 
X-CRM114-Status: GOOD (  14.79  )
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

pgd_entry() and pud_entry() were removed by commit 0b1fbfe50006c410
("mm/pagewalk: remove pgd_entry() and pud_entry()") because there were
no users. We're about to add users so reintroduce them, along with
p4d_entry() as we now have 5 levels of tables.

Note that commit a00cc7d9dd93d66a ("mm, x86: add support for
PUD-sized transparent hugepages") already re-added pud_entry() but with
different semantics to the other callbacks. Since there have never
been upstream users of this, revert the semantics back to match the
other callbacks. This means pud_entry() is called for all entries, not
just transparent huge pages.

Tested-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Steven Price <steven.price@arm.com>
---
 include/linux/pagewalk.h | 19 +++++++++++++------
 mm/pagewalk.c            | 27 ++++++++++++++++-----------
 2 files changed, 29 insertions(+), 17 deletions(-)

diff --git a/include/linux/pagewalk.h b/include/linux/pagewalk.h
index bddd9759bab9..12004b097eae 100644
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
@@ -24,8 +24,15 @@ struct mm_walk;
  *			"do page table walk over the current vma", returning
  *			a negative value means "abort current page table walk
  *			right now" and returning 1 means "skip the current vma"
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
diff --git a/mm/pagewalk.c b/mm/pagewalk.c
index d48c2a986ea3..fc4d98a3a5a0 100644
--- a/mm/pagewalk.c
+++ b/mm/pagewalk.c
@@ -93,15 +93,9 @@ static int walk_pud_range(p4d_t *p4d, unsigned long addr, unsigned long end,
 		}
 
 		if (ops->pud_entry) {
-			spinlock_t *ptl = pud_trans_huge_lock(pud, walk->vma);
-
-			if (ptl) {
-				err = ops->pud_entry(pud, addr, next, walk);
-				spin_unlock(ptl);
-				if (err)
-					break;
-				continue;
-			}
+			err = ops->pud_entry(pud, addr, next, walk);
+			if (err)
+				break;
 		}
 
 		split_huge_pud(walk->vma, pud, addr);
@@ -135,7 +129,12 @@ static int walk_p4d_range(pgd_t *pgd, unsigned long addr, unsigned long end,
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
@@ -162,7 +161,13 @@ static int walk_pgd_range(unsigned long addr, unsigned long end,
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
