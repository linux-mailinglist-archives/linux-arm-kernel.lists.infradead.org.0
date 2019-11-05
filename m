Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0368EF645
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 08:18:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N88PzX35LCY4HdqmpAyaTF9bvl42d0tyclMr1rKBjTE=; b=BubbLIYYIY2bgyUCwNb18ERbgc
	Q9xid0gloMRyYqqfTqo8WQZ/AaYlyPKKOGJkrdlDBf1z0YRjsmS3qRmwDrUdXblF26xcEK9Qkcvbw
	H8Qh1cTqQWrL2f0hweplXwb5xfCAbM9xcdLWbV/aNvrxGdtnR6dcIlDGhu4riOj8CZwdzCyvXn7pH
	B/LuzsuRGnO3mooaqx1MF13GMtLIhncYzkGzISrFMIj3svUXfT9mkHUpeyXO1k0dlWQNN7hVm15qI
	EiwW0ny90nCzVSpChm3NmU/WLr29/t4J/e0WuBnagxZy8A6P2Yy9fQgj+jP4jwWe6TuZs35esrDrZ
	qiPOh+6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRt6j-000792-0g; Tue, 05 Nov 2019 07:18:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRt54-00061z-81; Tue, 05 Nov 2019 07:16:48 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0FEC32190F;
 Tue,  5 Nov 2019 07:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572938205;
 bh=CW7Gp1IjfwDkl8IVaPenEWtXdVAOv0d2q6q7M1mNsx8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=adbP9je4CgnhNn5pd41iaGJeZTgIJ+/b90oMwYcDTqjm0MsL86w9SiqvWOlRtF/FZ
 KFxtn1mlStPSIahJLsESn9x21n9W9JQJiQ9z0PJUPEED+sNPeCYfipqFPSdFm6UiGC
 et8NyRXpxC9x7gkrte7X8SXQuumxW9NsDA8/wWuc=
From: Mike Rapoport <rppt@kernel.org>
To: linux-mm@kvack.org
Subject: [PATCH v4 06/13] microblaze: use pgtable-nopmd instead of 4level-fixup
Date: Tue,  5 Nov 2019 09:15:28 +0200
Message-Id: <1572938135-31886-7-git-send-email-rppt@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572938135-31886-1-git-send-email-rppt@kernel.org>
References: <1572938135-31886-1-git-send-email-rppt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_231646_486791_9BE3A26B 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 sparclinux@vger.kernel.org, Rolf Eike Beer <eike-kernel@sf-tec.de>,
 Vincent Chen <deanbo422@gmail.com>, Greg Ungerer <gerg@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Richard Weinberger <richard@nod.at>,
 Helge Deller <deller@gmx.de>, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 Jeff Dike <jdike@addtoit.com>, Sam Creasey <sammy@sammy.net>,
 Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-um@lists.infradead.org, linux-m68k@lists.linux-m68k.org,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-alpha@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Peter Rosin <peda@axentia.se>,
 Mike Rapoport <rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

microblaze has only two-level page tables and can use pgtable-nopmd and
folding of the upper layers.

Replace usage of include/asm-generic/4level-fixup.h and explicit definition
of __PAGETABLE_PMD_FOLDED in microblaze with
include/asm-generic/pgtable-nopmd.h and adjust page table manipulation
macros and functions accordingly.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/microblaze/include/asm/page.h    |  3 ---
 arch/microblaze/include/asm/pgalloc.h | 16 ----------------
 arch/microblaze/include/asm/pgtable.h | 32 ++------------------------------
 arch/microblaze/kernel/signal.c       | 10 +++++++---
 arch/microblaze/mm/init.c             |  7 +++++--
 arch/microblaze/mm/pgtable.c          | 13 +++++++++++--
 6 files changed, 25 insertions(+), 56 deletions(-)

diff --git a/arch/microblaze/include/asm/page.h b/arch/microblaze/include/asm/page.h
index d506bb0..f4b44b2 100644
--- a/arch/microblaze/include/asm/page.h
+++ b/arch/microblaze/include/asm/page.h
@@ -90,7 +90,6 @@ typedef struct { unsigned long	pte; }		pte_t;
 typedef struct { unsigned long	pgprot; }	pgprot_t;
 /* FIXME this can depend on linux kernel version */
 #   ifdef CONFIG_MMU
-typedef struct { unsigned long pmd; } pmd_t;
 typedef struct { unsigned long pgd; } pgd_t;
 #   else /* CONFIG_MMU */
 typedef struct { unsigned long	ste[64]; }	pmd_t;
@@ -103,7 +102,6 @@ typedef struct { p4d_t		pge[1]; }	pgd_t;
 # define pgprot_val(x)	((x).pgprot)
 
 #   ifdef CONFIG_MMU
-#   define pmd_val(x)      ((x).pmd)
 #   define pgd_val(x)      ((x).pgd)
 #   else  /* CONFIG_MMU */
 #   define pmd_val(x)	((x).ste[0])
@@ -112,7 +110,6 @@ typedef struct { p4d_t		pge[1]; }	pgd_t;
 #   endif  /* CONFIG_MMU */
 
 # define __pte(x)	((pte_t) { (x) })
-# define __pmd(x)	((pmd_t) { (x) })
 # define __pgd(x)	((pgd_t) { (x) })
 # define __pgprot(x)	((pgprot_t) { (x) })
 
diff --git a/arch/microblaze/include/asm/pgalloc.h b/arch/microblaze/include/asm/pgalloc.h
index 7ecb05b..fcf1e23 100644
--- a/arch/microblaze/include/asm/pgalloc.h
+++ b/arch/microblaze/include/asm/pgalloc.h
@@ -41,13 +41,6 @@ static inline void free_pgd(pgd_t *pgd)
 
 #define pmd_pgtable(pmd)	pmd_page(pmd)
 
-/*
- * We don't have any real pmd's, and this code never triggers because
- * the pgd will always be present..
- */
-#define pmd_alloc_one_fast(mm, address)	({ BUG(); ((pmd_t *)1); })
-#define pmd_alloc_one(mm, address)	({ BUG(); ((pmd_t *)2); })
-
 extern pte_t *pte_alloc_one_kernel(struct mm_struct *mm);
 
 #define __pte_free_tlb(tlb, pte, addr)	pte_free((tlb)->mm, (pte))
@@ -58,15 +51,6 @@ extern pte_t *pte_alloc_one_kernel(struct mm_struct *mm);
 #define pmd_populate_kernel(mm, pmd, pte) \
 		(pmd_val(*(pmd)) = (unsigned long) (pte))
 
-/*
- * We don't have any real pmd's, and this code never triggers because
- * the pgd will always be present..
- */
-#define pmd_alloc_one(mm, address)	({ BUG(); ((pmd_t *)2); })
-#define pmd_free(mm, x)			do { } while (0)
-#define __pmd_free_tlb(tlb, x, addr)	pmd_free((tlb)->mm, x)
-#define pgd_populate(mm, pmd, pte)	BUG()
-
 #endif /* CONFIG_MMU */
 
 #endif /* _ASM_MICROBLAZE_PGALLOC_H */
diff --git a/arch/microblaze/include/asm/pgtable.h b/arch/microblaze/include/asm/pgtable.h
index 954b69a..2def331 100644
--- a/arch/microblaze/include/asm/pgtable.h
+++ b/arch/microblaze/include/asm/pgtable.h
@@ -59,9 +59,7 @@ extern int mem_init_done;
 
 #else /* CONFIG_MMU */
 
-#include <asm-generic/4level-fixup.h>
-
-#define __PAGETABLE_PMD_FOLDED 1
+#include <asm-generic/pgtable-nopmd.h>
 
 #ifdef __KERNEL__
 #ifndef __ASSEMBLY__
@@ -138,13 +136,8 @@ static inline pte_t pte_mkspecial(pte_t pte)	{ return pte; }
  *
  */
 
-/* PMD_SHIFT determines the size of the area mapped by the PTE pages */
-#define PMD_SHIFT	(PAGE_SHIFT + PTE_SHIFT)
-#define PMD_SIZE	(1UL << PMD_SHIFT)
-#define PMD_MASK	(~(PMD_SIZE-1))
-
 /* PGDIR_SHIFT determines what a top-level page table entry can map */
-#define PGDIR_SHIFT	PMD_SHIFT
+#define PGDIR_SHIFT	(PAGE_SHIFT + PTE_SHIFT)
 #define PGDIR_SIZE	(1UL << PGDIR_SHIFT)
 #define PGDIR_MASK	(~(PGDIR_SIZE-1))
 
@@ -165,9 +158,6 @@ static inline pte_t pte_mkspecial(pte_t pte)	{ return pte; }
 #define pte_ERROR(e) \
 	printk(KERN_ERR "%s:%d: bad pte "PTE_FMT".\n", \
 		__FILE__, __LINE__, pte_val(e))
-#define pmd_ERROR(e) \
-	printk(KERN_ERR "%s:%d: bad pmd %08lx.\n", \
-		__FILE__, __LINE__, pmd_val(e))
 #define pgd_ERROR(e) \
 	printk(KERN_ERR "%s:%d: bad pgd %08lx.\n", \
 		__FILE__, __LINE__, pgd_val(e))
@@ -314,18 +304,6 @@ extern unsigned long empty_zero_page[1024];
 
 #ifndef __ASSEMBLY__
 /*
- * The "pgd_xxx()" functions here are trivial for a folded two-level
- * setup: the pgd is never bad, and a pmd always exists (as it's folded
- * into the pgd entry)
- */
-static inline int pgd_none(pgd_t pgd)		{ return 0; }
-static inline int pgd_bad(pgd_t pgd)		{ return 0; }
-static inline int pgd_present(pgd_t pgd)	{ return 1; }
-#define pgd_clear(xp)				do { } while (0)
-#define pgd_page(pgd) \
-	((unsigned long) __va(pgd_val(pgd) & PAGE_MASK))
-
-/*
  * The following only work if pte_present() is true.
  * Undefined behaviour if not..
  */
@@ -479,12 +457,6 @@ static inline void ptep_mkdirty(struct mm_struct *mm,
 #define pgd_index(address)	 ((address) >> PGDIR_SHIFT)
 #define pgd_offset(mm, address)	 ((mm)->pgd + pgd_index(address))
 
-/* Find an entry in the second-level page table.. */
-static inline pmd_t *pmd_offset(pgd_t *dir, unsigned long address)
-{
-	return (pmd_t *) dir;
-}
-
 /* Find an entry in the third-level page table.. */
 #define pte_index(address)		\
 	(((address) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
diff --git a/arch/microblaze/kernel/signal.c b/arch/microblaze/kernel/signal.c
index cdd4feb..c9125c3 100644
--- a/arch/microblaze/kernel/signal.c
+++ b/arch/microblaze/kernel/signal.c
@@ -160,6 +160,9 @@ static int setup_rt_frame(struct ksignal *ksig, sigset_t *set,
 	int err = 0, sig = ksig->sig;
 	unsigned long address = 0;
 #ifdef CONFIG_MMU
+	pgd_t *pgdp;
+	p4d_t *p4dp;
+	pud_t *pudp;
 	pmd_t *pmdp;
 	pte_t *ptep;
 #endif
@@ -195,9 +198,10 @@ static int setup_rt_frame(struct ksignal *ksig, sigset_t *set,
 
 	address = ((unsigned long)frame->tramp);
 #ifdef CONFIG_MMU
-	pmdp = pmd_offset(pud_offset(
-			pgd_offset(current->mm, address),
-					address), address);
+	pgdp = pgd_offset(current->mm, address);
+	p4dp = p4d_offset(pgdp, address);
+	pudp = pud_offset(p4dp, address);
+	pmdp = pmd_offset(pudp, address);
 
 	preempt_disable();
 	ptep = pte_offset_map(pmdp, address);
diff --git a/arch/microblaze/mm/init.c b/arch/microblaze/mm/init.c
index a015a95..050fc62 100644
--- a/arch/microblaze/mm/init.c
+++ b/arch/microblaze/mm/init.c
@@ -53,8 +53,11 @@ EXPORT_SYMBOL(kmap_prot);
 
 static inline pte_t *virt_to_kpte(unsigned long vaddr)
 {
-	return pte_offset_kernel(pmd_offset(pgd_offset_k(vaddr),
-			vaddr), vaddr);
+	pgd_t *pgd = pgd_offset_k(vaddr);
+	p4d_t *p4d = p4d_offset(pgd, vaddr);
+	pud_t *pud = pud_offset(p4d, vaddr);
+
+	return pte_offset_kernel(pmd_offset(pud, vaddr), vaddr);
 }
 
 static void __init highmem_init(void)
diff --git a/arch/microblaze/mm/pgtable.c b/arch/microblaze/mm/pgtable.c
index 010bb9c..68c26ca 100644
--- a/arch/microblaze/mm/pgtable.c
+++ b/arch/microblaze/mm/pgtable.c
@@ -134,11 +134,16 @@ EXPORT_SYMBOL(iounmap);
 
 int map_page(unsigned long va, phys_addr_t pa, int flags)
 {
+	p4d_t *p4d;
+	pud_t *pud;
 	pmd_t *pd;
 	pte_t *pg;
 	int err = -ENOMEM;
+
 	/* Use upper 10 bits of VA to index the first level map */
-	pd = pmd_offset(pgd_offset_k(va), va);
+	p4d = p4d_offset(pgd_offset_k(va), va);
+	pud = pud_offset(p4d, va);
+	pd = pmd_offset(pud, va);
 	/* Use middle 10 bits of VA to index the second-level map */
 	pg = pte_alloc_kernel(pd, va); /* from powerpc - pgtable.c */
 	/* pg = pte_alloc_kernel(&init_mm, pd, va); */
@@ -188,13 +193,17 @@ void __init mapin_ram(void)
 static int get_pteptr(struct mm_struct *mm, unsigned long addr, pte_t **ptep)
 {
 	pgd_t	*pgd;
+	p4d_t	*p4d;
+	pud_t	*pud;
 	pmd_t	*pmd;
 	pte_t	*pte;
 	int     retval = 0;
 
 	pgd = pgd_offset(mm, addr & PAGE_MASK);
 	if (pgd) {
-		pmd = pmd_offset(pgd, addr & PAGE_MASK);
+		p4d = p4d_offset(pgd, addr & PAGE_MASK);
+		pud = pud_offset(p4d, addr & PAGE_MASK);
+		pmd = pmd_offset(pud, addr & PAGE_MASK);
 		if (pmd_present(*pmd)) {
 			pte = pte_offset_kernel(pmd, addr & PAGE_MASK);
 			if (pte) {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
