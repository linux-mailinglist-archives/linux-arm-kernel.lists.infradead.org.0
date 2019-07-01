Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E11F170EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 08:18:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=v6pD4qfr9OzWkoqcv/2YNTXSSkcylNNAlAeP1ZpMjY4=; b=CF3q34jmx+PsNSVIbMtt+5JxUI
	wW0ee5pQgXJiSHPjYFKTutKQ4fTSWpQpkxOEFTZ3fvHh/nrmfgP4qYT+wOgR4v3f3Sf+smigQ9ckd
	ZUTC4kijAhB24J2YWAJwl1OI2bFbh4OdQjBKdqDmnsR5GhgYuZWdZSGEp1I54mPAlsLXv4ckn5f1I
	YeUmV/ZESP0lGch/2NLqYeEVNcrTgxI5wLJe2vyG3tHr42i4Bv1XFwo0TIdIfSGZ6AOQ9BhwRoAfU
	lJZOM55up0lnJ9e03ZLi1DhOMD8z2/HsY9plyBqWEANEjdPWTfu8AAPHau2rC6cQhHMLHNKV82pcZ
	HYVRMT2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOFtv-0008UO-EL; Wed, 08 May 2019 06:17:59 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOFtW-0008DB-Ge
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 06:17:36 +0000
Received: from pps.filterd (m0098413.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x486Gome015555
 for <linux-arm-kernel@lists.infradead.org>; Wed, 8 May 2019 02:17:33 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2sbq4h6ftb-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 08 May 2019 02:17:33 -0400
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Wed, 8 May 2019 07:17:30 +0100
Received: from b06cxnps4074.portsmouth.uk.ibm.com (9.149.109.196)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 8 May 2019 07:17:21 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x486HKQr52428916
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 8 May 2019 06:17:20 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id AF66FA405D;
 Wed,  8 May 2019 06:17:20 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6AF49A4057;
 Wed,  8 May 2019 06:17:17 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.112])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Wed,  8 May 2019 06:17:17 +0000 (GMT)
Received: by rapoport-lnx (sSMTP sendmail emulation);
 Wed, 08 May 2019 09:17:16 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 01/14] asm-generic, x86: introduce generic pte_{alloc,
 free}_one[_kernel]
Date: Wed,  8 May 2019 09:16:58 +0300
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557296232-15361-1-git-send-email-rppt@linux.ibm.com>
References: <1557296232-15361-1-git-send-email-rppt@linux.ibm.com>
X-TM-AS-GCONF: 00
x-cbid: 19050806-0028-0000-0000-0000036B6E50
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19050806-0029-0000-0000-0000242AEA17
Message-Id: <1557296232-15361-2-git-send-email-rppt@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-08_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905080040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_231734_684197_E5B3A7E8 
X-CRM114-Status: GOOD (  30.44  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Michal Hocko <mhocko@suse.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-mips@vger.kernel.org,
 linux-mm@kvack.org, Guo Ren <guoren@kernel.org>, linux-hexagon@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-arch@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Matt Turner <mattst88@gmail.com>,
 Sam Creasey <sammy@sammy.net>, Arnd Bergmann <arnd@arndb.de>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-um@lists.infradead.org,
 Richard Weinberger <richard@nod.at>, linux-m68k@lists.linux-m68k.org,
 Greentime Hu <green.hu@gmail.com>, nios2-dev@lists.rocketboards.org,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Richard Kuo <rkuo@codeaurora.org>, Paul Burton <paul.burton@mips.com>,
 linux-alpha@vger.kernel.org, Ley Foon Tan <lftan@altera.com>,
 linuxppc-dev@lists.ozlabs.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Most architectures have identical or very similar implementation of
pte_alloc_one_kernel(), pte_alloc_one(), pte_free_kernel() and pte_free().

Add a generic implementation that can be reused across architectures and
enable its use on x86.

The generic implementation uses

	GFP_KERNEL | __GFP_ZERO

for the kernel page tables and

	GFP_KERNEL | __GFP_ZERO | __GFP_ACCOUNT

for the user page tables.

The "base" functions for PTE allocation, namely __pte_alloc_one_kernel()
and __pte_alloc_one() are intended for the architectures that require
additional actions after actual memory allocation or must use non-default
GFP flags.

x86 is switched to use generic pte_alloc_one_kernel(), pte_free_kernel() and
pte_free().

x86 still implements pte_alloc_one() to allow run-time control of GFP flags
required for "userpte" command line option.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/x86/include/asm/pgalloc.h |  19 ++------
 arch/x86/mm/pgtable.c          |  33 ++++---------
 include/asm-generic/pgalloc.h  | 107 +++++++++++++++++++++++++++++++++++++++--
 3 files changed, 115 insertions(+), 44 deletions(-)

diff --git a/arch/x86/include/asm/pgalloc.h b/arch/x86/include/asm/pgalloc.h
index a281e61..29aa785 100644
--- a/arch/x86/include/asm/pgalloc.h
+++ b/arch/x86/include/asm/pgalloc.h
@@ -6,6 +6,9 @@
 #include <linux/mm.h>		/* for struct page */
 #include <linux/pagemap.h>
 
+#define __HAVE_ARCH_PTE_ALLOC_ONE
+#include <asm-generic/pgalloc.h>	/* for pte_{alloc,free}_one */
+
 static inline int  __paravirt_pgd_alloc(struct mm_struct *mm) { return 0; }
 
 #ifdef CONFIG_PARAVIRT_XXL
@@ -47,24 +50,8 @@ extern gfp_t __userpte_alloc_gfp;
 extern pgd_t *pgd_alloc(struct mm_struct *);
 extern void pgd_free(struct mm_struct *mm, pgd_t *pgd);
 
-extern pte_t *pte_alloc_one_kernel(struct mm_struct *);
 extern pgtable_t pte_alloc_one(struct mm_struct *);
 
-/* Should really implement gc for free page table pages. This could be
-   done with a reference count in struct page. */
-
-static inline void pte_free_kernel(struct mm_struct *mm, pte_t *pte)
-{
-	BUG_ON((unsigned long)pte & (PAGE_SIZE-1));
-	free_page((unsigned long)pte);
-}
-
-static inline void pte_free(struct mm_struct *mm, struct page *pte)
-{
-	pgtable_page_dtor(pte);
-	__free_page(pte);
-}
-
 extern void ___pte_free_tlb(struct mmu_gather *tlb, struct page *pte);
 
 static inline void __pte_free_tlb(struct mmu_gather *tlb, struct page *pte,
diff --git a/arch/x86/mm/pgtable.c b/arch/x86/mm/pgtable.c
index 1f67b1e..44816ff 100644
--- a/arch/x86/mm/pgtable.c
+++ b/arch/x86/mm/pgtable.c
@@ -13,33 +13,17 @@ phys_addr_t physical_mask __ro_after_init = (1ULL << __PHYSICAL_MASK_SHIFT) - 1;
 EXPORT_SYMBOL(physical_mask);
 #endif
 
-#define PGALLOC_GFP (GFP_KERNEL_ACCOUNT | __GFP_ZERO)
-
 #ifdef CONFIG_HIGHPTE
-#define PGALLOC_USER_GFP __GFP_HIGHMEM
+#define PGTABLE_HIGHMEM __GFP_HIGHMEM
 #else
-#define PGALLOC_USER_GFP 0
+#define PGTABLE_HIGHMEM 0
 #endif
 
-gfp_t __userpte_alloc_gfp = PGALLOC_GFP | PGALLOC_USER_GFP;
-
-pte_t *pte_alloc_one_kernel(struct mm_struct *mm)
-{
-	return (pte_t *)__get_free_page(PGALLOC_GFP & ~__GFP_ACCOUNT);
-}
+gfp_t __userpte_alloc_gfp = GFP_PGTABLE_USER | PGTABLE_HIGHMEM;
 
 pgtable_t pte_alloc_one(struct mm_struct *mm)
 {
-	struct page *pte;
-
-	pte = alloc_pages(__userpte_alloc_gfp, 0);
-	if (!pte)
-		return NULL;
-	if (!pgtable_page_ctor(pte)) {
-		__free_page(pte);
-		return NULL;
-	}
-	return pte;
+	return __pte_alloc_one(mm, __userpte_alloc_gfp);
 }
 
 static int __init setup_userpte(char *arg)
@@ -235,7 +219,7 @@ static int preallocate_pmds(struct mm_struct *mm, pmd_t *pmds[], int count)
 {
 	int i;
 	bool failed = false;
-	gfp_t gfp = PGALLOC_GFP;
+	gfp_t gfp = GFP_PGTABLE_USER;
 
 	if (mm == &init_mm)
 		gfp &= ~__GFP_ACCOUNT;
@@ -399,14 +383,14 @@ static inline pgd_t *_pgd_alloc(void)
 	 * We allocate one page for pgd.
 	 */
 	if (!SHARED_KERNEL_PMD)
-		return (pgd_t *)__get_free_pages(PGALLOC_GFP,
+		return (pgd_t *)__get_free_pages(GFP_PGTABLE_USER,
 						 PGD_ALLOCATION_ORDER);
 
 	/*
 	 * Now PAE kernel is not running as a Xen domain. We can allocate
 	 * a 32-byte slab for pgd to save memory space.
 	 */
-	return kmem_cache_alloc(pgd_cache, PGALLOC_GFP);
+	return kmem_cache_alloc(pgd_cache, GFP_PGTABLE_USER);
 }
 
 static inline void _pgd_free(pgd_t *pgd)
@@ -424,7 +408,8 @@ void __init pgd_cache_init(void)
 
 static inline pgd_t *_pgd_alloc(void)
 {
-	return (pgd_t *)__get_free_pages(PGALLOC_GFP, PGD_ALLOCATION_ORDER);
+	return (pgd_t *)__get_free_pages(GFP_PGTABLE_USER,
+					 PGD_ALLOCATION_ORDER);
 }
 
 static inline void _pgd_free(pgd_t *pgd)
diff --git a/include/asm-generic/pgalloc.h b/include/asm-generic/pgalloc.h
index 948714c..8476175 100644
--- a/include/asm-generic/pgalloc.h
+++ b/include/asm-generic/pgalloc.h
@@ -1,13 +1,112 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 #ifndef __ASM_GENERIC_PGALLOC_H
 #define __ASM_GENERIC_PGALLOC_H
-/*
- * an empty file is enough for a nommu architecture
- */
+
 #ifdef CONFIG_MMU
-#error need to implement an architecture specific asm/pgalloc.h
+
+#define GFP_PGTABLE_KERNEL	(GFP_KERNEL | __GFP_ZERO)
+#define GFP_PGTABLE_USER	(GFP_PGTABLE_KERNEL | __GFP_ACCOUNT)
+
+/**
+ * __pte_alloc_one_kernel - allocate a page for PTE-level kernel page table
+ * @mm: the mm_struct of the current context
+ *
+ * This function is intended for architectures that need
+ * anything beyond simple page allocation.
+ *
+ * Return: pointer to the allocated memory or %NULL on error
+ */
+static inline pte_t *__pte_alloc_one_kernel(struct mm_struct *mm)
+{
+	return (pte_t *)__get_free_page(GFP_PGTABLE_KERNEL);
+}
+
+#ifndef __HAVE_ARCH_PTE_ALLOC_ONE_KERNEL
+/**
+ * pte_alloc_one_kernel - allocate a page for PTE-level kernel page table
+ * @mm: the mm_struct of the current context
+ *
+ * Return: pointer to the allocated memory or %NULL on error
+ */
+static inline pte_t *pte_alloc_one_kernel(struct mm_struct *mm)
+{
+	return __pte_alloc_one_kernel(mm);
+}
+#endif
+
+/**
+ * pte_free_kernel - free PTE-level kernel page table page
+ * @mm: the mm_struct of the current context
+ * @pte: pointer to the memory containing the page table
+ */
+static inline void pte_free_kernel(struct mm_struct *mm, pte_t *pte)
+{
+	free_page((unsigned long)pte);
+}
+
+/**
+ * __pte_alloc_one - allocate a page for PTE-level user page table
+ * @mm: the mm_struct of the current context
+ * @gfp: GFP flags to use for the allocation
+ *
+ * Allocates a page and runs the pgtable_page_ctor().
+ *
+ * This function is intended for architectures that need
+ * anything beyond simple page allocation or must have custom GFP flags.
+ *
+ * Return: `struct page` initialized as page table or %NULL on error
+ */
+static inline pgtable_t __pte_alloc_one(struct mm_struct *mm, gfp_t gfp)
+{
+	struct page *pte;
+
+	pte = alloc_page(gfp);
+	if (!pte)
+		return NULL;
+	if (!pgtable_page_ctor(pte)) {
+		__free_page(pte);
+		return NULL;
+	}
+
+	return pte;
+}
+
+#ifndef __HAVE_ARCH_PTE_ALLOC_ONE
+/**
+ * pte_alloc_one - allocate a page for PTE-level user page table
+ * @mm: the mm_struct of the current context
+ *
+ * Allocates a page and runs the pgtable_page_ctor().
+ *
+ * Return: `struct page` initialized as page table or %NULL on error
+ */
+static inline pgtable_t pte_alloc_one(struct mm_struct *mm)
+{
+	return __pte_alloc_one(mm, GFP_PGTABLE_USER);
+}
 #endif
 
+/*
+ * Should really implement gc for free page table pages. This could be
+ * done with a reference count in struct page.
+ */
+
+/**
+ * pte_free - free PTE-level user page table page
+ * @mm: the mm_struct of the current context
+ * @pte_page: the `struct page` representing the page table
+ */
+static inline void pte_free(struct mm_struct *mm, struct page *pte_page)
+{
+	pgtable_page_dtor(pte_page);
+	__free_page(pte_page);
+}
+
+#else /* CONFIG_MMU */
+
+/* This is enough for a nommu architecture */
 #define check_pgt_cache()          do { } while (0)
 
+#endif /* CONFIG_MMU */
+
 #endif /* __ASM_GENERIC_PGALLOC_H */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
